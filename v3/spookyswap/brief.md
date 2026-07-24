# Agentic Audit Brief: SpookySwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: SpookySwap (`spookyswap`)
- Website: [https://spooky.fi](https://spooky.fi)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: fantom, sonic
- Contract surface: 136 unique implementations (272 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $848,278.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SpookySwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across fantom, sonic. Structural roles: 5 supporting, 4 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: supporting (5), core (4), unclassified (1)
- Contract kinds: contract (10)
- Detected standards: multicall (3), erc165 (1), erc721 (1), ownable (1)
- Frameworks: openzeppelin (6), uniswap-v3 (5), uniswap-v2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- NonfungiblePositionManager (`0xf807aca27b1550fe778fd4e7013bb57480b17fac`, chain 146)
- QuoterV2 (`0x3f2026cae76b987c4002e62b9df70988b4388234`, chain 146)
- SpookyLaunchpad (`0xb52c0eb864722c313d2c084c6ffa2a6e46850c31`, chain 146)
- SwapRouter02 (`0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87`, chain 146)
- TickLens (`0x7b97e8c53f1b4fe7f0c330583b89bd3038554449`, chain 146)
- UniswapV2Factory (`0xee4bc42157cf65291ba2fe839ae127e3cc76f741`, chain 146)
- UniswapV2Router02 (`0xa6ad18c2ac47803e193f75c3677b14bf19b94883`, chain 146)
- UniswapV3Factory (`0x3d91b700252e0e3ee7805d12e048a988ab69c8ad`, chain 146)
- UniswapV3Staker (`0x160f55276713f356d8409910c3cfa1da23217c23`, chain 146)
- UnnamedContract (`0x40f70b72796c30f355df859b2c8f94f18c38adf8`, chain 250)
- UnnamedContract (`0x7928a2c48754501f3a8064765ecae541dae5c3e6`, chain 250)
- UnnamedContract (`0x838c010f57889195c88f2097488e49b7ad04ecb1`, chain 250)
- UnnamedContract (`0x9c04f7a1506abdde1a3bb8ab1a2da520bdf79e68`, chain 250)
- UnnamedContract (`0xb39d21718e24de36fdd8c5c73e928b5eff33d6c2`, chain 250)
- UnnamedContract (`0xb9507f2ed171d52c5c2efaeabde440d264504a92`, chain 250)
- UnnamedContract (`0xbaa8353cc9d02733ef12f9556ed999521f6e554c`, chain 250)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/31 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 119 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 26
- Confirmed-live implementations: 17 of 136 unique; 119 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/83
- Verified + Unaudited implementations: 83
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 136
- Raw deployments: 272
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x5b5c7b6494ec52d9316a7f578ef3fbbbaa53be63`; sonic `0xb74629900981f2977cd7a8e37052fee0d7a4c395` | ⚠️ Unaudited |
| BooMirrorWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa95ea1cfabccf0e9eb94b646cefe9ed71ff5d605` | ⚠️ Unaudited |
| BooOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x7a0c53f7eb34c5bc8b01691723669ada9d6cb384`; sonic `0xb8fce759094d368c922ffe6ffa73154ab2fa4156` | ⚠️ Unaudited |
| BrewBooV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x79710d58c3600401fe21e799ff97f37100c8b179`; sonic `0x84a190dc9a1de94495715f5deaa0defc906b09b0`; sonic `0xc3815bf058fb94243ebc6c559dfc59ceaeef00ea` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x826c8465b6e6a0ca6454cc15703b60101f171d8e`; sonic `0xf771463d1e9524574d7117f90c5b1d66a1a3e079` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd`; sonic `0xf06a648cd013990c237318cb49a56bb54e2cd698` | ⚠️ Unaudited |
| BridgeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x6273242a7e88b3de90822b31648c212215caafe4`; sonic `0x9d4c169703bb0116751a6965952a5e4adfdffb05` | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x391071fe567d609e4af9d32de726d4c33679c7e2` | ⚠️ Unaudited |
| CircleTokenAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xba2b70309db7ec370e68240cf1f05580cdb0e563` | ⚠️ Unaudited |
| ConfigRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00`; sonic `0xffd7c82bbf7e44fb986c4ae34e376cd674b670f3` | ⚠️ Unaudited |
| ControlFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0b60140dcc98a6a9e9985ab165dc54903861d50a`; sonic `0xe6a62ca9da02f43978ad726907ba26558509259d` | ⚠️ Unaudited |
| Diamond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x464873026877c9d947e2778a1b4cb4a3cbc688f0`; sonic `0x803de354cbd853d9ae3bc58131a5d538de7a72e3` | ⚠️ Unaudited |
| DiamondInit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1a521c6a05d56a52b9203b6f5d86dd0f2e8d38b4`; sonic `0x2ecc7da3cc98d341f987c85c3d9fc198570838b5` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x01e822aae6d2cc456804ccd36aa4d3830dbc6e3b`; sonic `0x6ae14800c45ae9383db2c3f2ee6019ebe1e32403` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4c0b5bfd9b7a970e24ce5d62af510258c99e9ec7`; sonic `0x910afaa218ce5228f024252a1ea69780dcd3caa5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5f985705a9ed0cd2561c8d69e77b66ce99d9f3e8`; sonic `0x65f2358801ece9e06d283d0d80f3e6ca7a7c3477` | ⚠️ Unaudited |
| FeeSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2bb0bda25fbf103176337551729741b4d5748e0b` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x3fd4eaa6f9b0b46bb8a2dbe8c646524e141ee783`; sonic `0x7657f03eef1b05996b02eeeb89a0683a5b61fe35` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x229e64252e2901a424600e22c28a722404d92dcc`; sonic `0x29219dd400f2bf60e5a23d13be72b486d4038894` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x23af4836dd12e9c40269965eb41a88aefd544c1a`; sonic `0xe715cba7b5ccb33790cebff1436809d36cb17e57` | ⚠️ Unaudited |
| FiatTokenV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x35d51107aacd80ee8ad3751170d70cf4ce186535`; sonic `0x767628f6e5d5bb6b4e47c805ae6ab7fee29a0801`; sonic `0xb070ad54d66ee7efa2bdbfff9628ffafd247db87`; sonic `0xde95b31cae2ae5a63b9ae23252686684f29e09b3` | ⚠️ Unaudited |
| FundingRateFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0eb92f476a9a74b15a9fdcc6c252b2013afc2dec`; sonic `0x359ae1329f4070f81079b415249fb13664b6ce76` | ⚠️ Unaudited |
| HedgerPartyBV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x00c069d68bc7420740460dbc3cc3fff9b3742421`; sonic `0xdfed11fe4af63b059edbbdf53e9c633b331ed432` | ⚠️ Unaudited |
| HedgerPartyBV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b2903a4a690422c2120a0ad9e68e9807ed1576e` | ⚠️ Unaudited |
| HedgerPartyBV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2e7b7fe1c3625aa0e21772dc174e22c7f80de684` | ⚠️ Unaudited |
| HedgerPartyBV7 | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | sonic | n/a | 4 deployments: sonic `0x3844ded07a515d7d18073538d553d298d259784b`; sonic `0x7d387771f6e23f353a4afce21af521875c0825d0`; sonic `0x8141c1840f7d190cd24239c22b1e560e08999b12`; sonic `0xf25f5aab4e26e75c09ac665c66943ac11b48ae4c` | ⚠️ Unaudited |
| LeverageFiller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x053714a436ea716e14b3430f2ee8e2488c83f16a`; sonic `0xfe4a47e10ee3b270b43972629e9a93ee0ab31e7d` | ⚠️ Unaudited |
| LiquidationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xc258535aaf6ad3ced5d2e03e2b66c35262488309`; sonic `0xcf74c49be20351ef069e3f32b6e646d4b2ba69d9` | ⚠️ Unaudited |
| LongTailIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x12f407bfdbbe56ab19ecd389992f0f408810305a` | ⚠️ Unaudited |
| MajorIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x18fad5b72113497e1c92570b6f517328d05505fa` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: sonic `0x3c05fae3805e4dbdec04e56adc5ee493194996ed`; sonic `0x589cfd082b670998f4181cc6007931966f94bec7`; sonic `0x7bc1cf3eee9c3aca357133c5ebc6d575f63ba48e`; sonic `0xad9ed0a257a5ddbc39f625f2619b4cb036570393`; sonic `0xafcb4b8a55abc2b389a510cc53da415a2e2002d0`; sonic `0xbe9f04237f6603d92fee25e36ab5dd4fd263b954`; sonic `0xc787a98e3312c1f8ad7b04dc1fc1502a9a4f8be1` | ⚠️ Unaudited |
| MessageBus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x63c379522f8e56e4af9683fbcf53ee1093f8c654`; sonic `0xa71610b94c6160f9d484d9921aae910f64955006` | ⚠️ Unaudited |
| MintedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x50c42deacd8fc9773493ed674b675be577f2634b` | ⚠️ Unaudited |
| MPTProofVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x838e5d1d78d634fc43430dbd5ebb9319cf5f8c3c`; sonic `0xa13fc0eeed7c66855798ca8402960f11804da6d0` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1ecabf0eba136920677c9575faccee36f30592cf`; sonic `0x8a67b0449b0a83d1f7fdb39938bb6145a93fb2ae` | ⚠️ Unaudited |
| MultiAccount | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x4bd822749416543da46eee10fc9e7f173c1310d8`; sonic `0x8a8cf91dc8f5c93f6bad1dc69961c3d768d4595c` | ⚠️ Unaudited |
| MultiAccountV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3300433ca6832fc095506449fc1ab0bf3bf09a70`; sonic `0xd90aca50ee8cb7c3dd1fee84a722d574186cdd17` | ⚠️ Unaudited |
| MultiAccountV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xce932c61904a586c35ddff6e0403f848503bf2fa`; sonic `0xfca1a845f78ee2031991307e0c5574294c29acc6` | ⚠️ Unaudited |
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa5ae26ac861375a6830caf1443ed385298046856` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8392166e9e45fb568d84c9ab3cd7566977db3b55` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | sonic | unit-256699 | `0xf807aca27b1550fe778fd4e7013bb57480b17fac` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7d0776b117c87f4bc174870ec19719972853d32d` | ⚠️ Unaudited |
| OracleRouterChainlink | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xfb04979bda6546f114afcff2a78d35446d5a32e8` | ⚠️ Unaudited |
| PartyAFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0392e9cf758cd1566dab547fdaf3ddcfed1d7375`; sonic `0x5e0663deb8683b70e0ff36e6e6e0dfa0f0069934` | ⚠️ Unaudited |
| PartyBGroupActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8768ff7d7e1ff95a583159d573fd1708dd6c7001` | ⚠️ Unaudited |
| PartyBPositionActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0xc4bae634c692078a97beb7b0b583d16b13359fcf`; sonic `0xd6ee1fd75d11989e57b57aa6fd75f558fbf02a5e` | ⚠️ Unaudited |
| PartyBQuoteActionsFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x0188b538faf03c695f154a6e324513453fafb8a1`; sonic `0x3adc81cc43d9e1636de9cbac764afcb1f3ae6cde` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x981ef1f1644715ae797434de4c0aad16e6162723` | ⚠️ Unaudited |
| PositionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x31b57e9dadc3227400bf1742fc9692ebb3749a4b`; sonic `0x31b68b75a817d74fad9a9cb04b63ab9b61ef0303` | ⚠️ Unaudited |
| PrizeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3`; sonic `0x78d97679b6582eb0adfd2b1b52a7dced76d94c69` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 15 deployments: sonic `0x3e09dbfe0f6e82b8448a11fb082d44cd575849d3`; sonic `0x3e864a2ae46fa8e7eaac25012f517907f3ace120`; sonic `0x6255ab31db76f82fda66d0bca46bbe221f8b8909`; sonic `0x6b44c878f869cf742a6d4dd60180a19c3b09716e`; sonic `0x84da347c0fe5ce5d03470ecb174d5c6d66f3f191`; sonic `0x87fc464fa528260f1eeab94fa20f73fed8536eb7`; sonic `0x8f371825ee8dbe65d221d1aeb143778006ea5787`; sonic `0x9303e1783a99f1ee4dbf0f78ce4832b4d475802c`; sonic `0xae16f9d330f37e8f077d2280ac0433bce7c7f16a`; sonic `0xb6e3b44975f2966707a91747f89d2002ff8d62db`; sonic `0xccde63f39d7d528ab270375a960c748238d37f77`; sonic `0xd7a652118799b7a84478982a0b68ffa7f78c7133`; sonic `0xdb91d232e93969130272de309d3d914547604426`; sonic `0xfc3f164042a1da15287a8fc682f0298f1fee4864`; sonic `0xfc4ac3af357ebe6d556dcd72453e9b30f6dc6873` | ⚠️ Unaudited |
| Quoter | unknown | project_anchor | own_supporting | 0 | sonic | unit-256674 | `0x593856bbfd6aaf0b714277c0bf06307900d1aa68` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x746c97f670f1747bbec5c451eb3a6ccd257f78e1`; sonic `0xddafeb8d9e6d2a47630a999a8c62fa3ad99c6a47` | ⚠️ Unaudited |
| QuoterV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-256672 | `0x3f2026cae76b987c4002e62b9df70988b4388234` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x6e70f818440aac65859ea225e653010effb525bc`; sonic `0xd71a77b3c9621ae62669a0d8f5aeed4bb0b4b6b3` | ⚠️ Unaudited |
| RfqEngine | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x20116919299625b1b3e474d5a594a5b4ed13e95b` | ⚠️ Unaudited |
| SettlementFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1037b57f7496d10d72f81446ba52fee7d8c8ead7`; sonic `0x8f06459f184553e5d04f07f868720bdacab39395` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: sonic `0x01798076f71e0e48c37b670af7752d74d6e6bf1b`; sonic `0x26c060a219d77bc0bb0e3e7131f50a51cf7d4e81`; sonic `0x5d03117ddd9ca5455913afe3b3b8a7c2b068f887`; sonic `0x6edf3f3a5ccb6a9c3535c1bd62b666b770b6d820`; sonic `0xb4a197efc9f11b460e11ea7a819eeb2c902dd7cf`; sonic `0xb90f6a672aee6f895e5ac50ad3a1a88868b502fe` | ⚠️ Unaudited |
| SpookyLaunchpad | unknown | project_anchor | own_supporting | 0 | sonic | unit-256679 | `0xb52c0eb864722c313d2c084c6ffa2a6e46850c31` | ⚠️ Unaudited |
| StableIRM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4bd77b487e2a8884b4e5528ff32b3917f7edefd5` | ⚠️ Unaudited |
| StateOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x6494ce4a3f9b3b765fbd07aa7ec2d3108e66d684`; sonic `0xad9f40b195d46203b17d2f3302976e7520e150b9` | ⚠️ Unaudited |
| Storage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4fec0c1c745c2d8ebb4fffa0d4e8d1395a135d73` | ⚠️ Unaudited |
| SwapRouter02 | adapter | project_anchor | own_supporting | 0 | sonic | unit-256669 | `0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0xb75efbe431444667bbfc0b9faba9eab33e270445`; sonic `0xb8d86732fe95d3168669f4b2b73eda00fbc54d31`; sonic `0xbece4e11a73c209bfb6c8c96e5034dc1556bea4e`; sonic `0xcbdeca132f93a71d963d26d8c93cfcced7f74362` | ⚠️ Unaudited |
| SymmCoreCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x9fa4923601b951d22bf72311b69251f196c9d69d`; sonic `0x9fd1fd7910f61cc6f5a18ed4916fa0c0f40a7c3c` | ⚠️ Unaudited |
| SymmioFeeDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x61662ea0eeecaf693538284d4332ec6f2828f5f4`; sonic `0x99886d393329681ed35042854b18d82c7ad95519` | ⚠️ Unaudited |
| SymmioSymbolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3cce951445efe9b7f6f9c08119ca27e5919c2776` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x71d0f7b02e76c773693ade6f521cfc7becac1bac` | ⚠️ Unaudited |
| TickLens | unknown | project_anchor | own_supporting | 0 | sonic | unit-256675 | `0x7b97e8c53f1b4fe7f0c330583b89bd3038554449` | ⚠️ Unaudited |
| TicTacToe | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x88217164e88201227c76a888d18ba507cd1dcb47`; sonic `0xaa0944ea173d300945ee5f13ae49560643e02c14` | ⚠️ Unaudited |
| TokenPairs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x1109f1a00fbe5c44555a543540bb2db2c15c81db`; sonic `0x36535d7bbfc61e2336faae501f38d77ccdf9cd43` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3faf5b5d4355aee4b9381147dcac8d7f1b5a4876`; sonic `0x62a572120530a6cbbcafb7c6fb8c94fbdedcd70a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: sonic `0x89c31261221961acbae55917256d59257511df5e`; sonic `0x960bdccee3ccb6b26db9e070713d92657de3a020`; sonic `0xc1883ff64adac9014b40fab45d7dbd8e34992748`; sonic `0xd899927a68bc0c355a3eb0e089a6db815b4de721`; sonic `0xfb70405f550695feb9f6ccae17a210a612a993f8` | ⚠️ Unaudited |
| UniswapV2Factory | registry | project_anchor | own_supporting | 0 | sonic | unit-256681 | `0xee4bc42157cf65291ba2fe839ae127e3cc76f741` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | project_anchor | own_supporting | 0 | sonic | unit-256678 | `0xa6ad18c2ac47803e193f75c3677b14bf19b94883` | ⚠️ Unaudited |
| UniswapV3Factory | registry | project_anchor | own_supporting | 0 | sonic | unit-256671 | `0x3d91b700252e0e3ee7805d12e048a988ab69c8ad` | ⚠️ Unaudited |
| UniswapV3Staker | core_logic | project_anchor | own_supporting | 0 | sonic | unit-256670 | `0x160f55276713f356d8409910c3cfa1da23217c23` | ⚠️ Unaudited |
| UniversalRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x55d10e597275d5e572cd0ecf85a0c944964ebef8`; sonic `0x8762fc1fd03807fddef245f092f6e4d3f93acd97` | ⚠️ Unaudited |
| UpdateManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x5d3850377c22dd8b154161d07102b60ef4d3cf2b`; sonic `0xa432cfb45b61a19acde9e9b60f9d6b8f3420187a` | ⚠️ Unaudited |
| UpdateManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb63f4eccf7799b1cd278e60d0d465017ccd5f0d3` | ⚠️ Unaudited |
| V3Migrator | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x865c434b5c4d2296776352da5ce72feaaaab92fa`; sonic `0x9e5b69896022aca2b05f198f7e0125b41d799f80`; sonic `0xc86bd08f735e40f82a854bf0e0986091a3e8c191` | ⚠️ Unaudited |
| ViewFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 2 deployments: sonic `0x1347a83d1eb2121b15f944b21ddbe22ebf8cf8d1`; sonic `0x4d8e97f44cd90504e790827137334d9a42bbec55` | ⚠️ Unaudited |
| WrappedSonic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x039e2fb66102314ce7b64ce5ce3e5183bc94ad38` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0ae71c8f93af79417c5e2fd796ec2a288626f17c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0df6281a09d39dd59e90ae2ad088f1d21947174f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1a2dd14da3858cb913207575e699937a307a0cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1fac89ea9757be6f7f040ac88853458c6c026f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2071a84b76cb9d3f2c2c25c04af327287d637be3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x352866b5c559a3292144263ddd937cc3b8b4c0e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3665a6a80604269633f19d1d78a321b069462a21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3d9cd8a63e2769b761fadd6e867221c8381938c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x44ca93531be2872a1e6e9987bc8f2d62c0864676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4a5f9a946d23f43cced8e6bbf783f45592148568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50e88c692b137b8a51b6017026ef414651e0d5ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x63ad1a0b191687fcaaa1bccb824421aeada31527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x643c5bd74da7d37f60615562bc2b1dbf2b73d55f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6697eefaff6e8cc532115c8d0a51164f92e0e324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6a8c15229ffd048dcfff3d05eaa5c1a70e6c599c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6b0d9fa54cec03e83a6b08400228c2afd291a83d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x70d1f613af7345cb1ef7999e6868cd11c8ad90ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x775525b3e7569057c29c31bdd6bc9c90fd81f835` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7779f53fcbc0848353e238de2c975a4794313a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x78f6a74a0074a0353349e070368e6d2d587bb2e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x836b8c114ac6301e1e96bbea7b00a99b1fc6aa4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8482eb00293a0c8703ed43feb42629a2f12a5f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x858657908d257cff5f72aba48b857c9b848ce686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x86aa8e40c5258a94bd2428e8ea55621e376a1084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8d47c22f331d3851fe0f5c8085c81bff6b2ab93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x912060d9c7244a7601276c16ccb5be258f1335df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94e84861513304fb2e20491408a410889374904f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9522bacee3e237cf81cd0a1823cf3dc751d887c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x97bc7db6c898473bdbcce5f46250e30dc96f0b0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9943afde8779fc05334c1577812b29b36fb4e674` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9d0d2c55d98d86b4377fb9cf60871bed5c18a910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xaecac50ba44dc8fa2a4c8410e5215315ed3ca4b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb7d1d27221f636da91300288dc012927e3589533` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbab4a13713c4dfba3073d0b35e2829f8be800310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc3b6680629b7cc2130e131485f169c8c51dc6d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc57afd1d249839c16bf9c0bf9ffa4200b256e6ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc6b9df7c769ce5689da6b98a852d1b0d588e2403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcc96a349d1627ccc07628cadbee7ab7e3031020e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe607f56463bf9cdc776ba630084ab542f2380f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe85df5c4e588fb0dd4af2436820429a3eb7ef797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xecbd0788bb5a72f9dfdac1ffeaaf9b7c2b26e456` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf39352ec34a007b2726e2c4610a13f7aea86684e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf738659243be53148eaa8937eaac5e55c0424a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfb9114dbd11450444e7b2ca7a6b666151784079a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfbbb87b674adffe7313ed6217451200632447b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 53 deployments: fantom `0x04068da6c83afcfa0e13ba15a6696662335d5b75`; fantom `0x049d68029688eabf473097a2fc38ef61633a3c7a`; fantom `0x06d173628be105fe81f1c82c9979ba79ebcafcb7`; fantom `0x0845c0bfe75691b1e21b24351aac581a7fb6b7df`; fantom `0x08f6fe8f4dc577cf81e40e03e561d29b8b33e19b`; fantom `0x157f913ed0961a8d0d06a258019840919111d9b9`; fantom `0x1656728af3a14e1319f030dc147fabf6f627059e`; fantom `0x1c94665fd3ecfa969feda7ed01e35522e6982022`; fantom `0x1e4f97b9f9f913c46f1632781732927b9019c68b`; fantom `0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83`; fantom `0x29b0da86e484e1c0029b56e817912d778ac0ec69`; fantom `0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c`; fantom `0x30872e4fc4edbfd7a352bfc2463eb4fae9c09086`; fantom `0x321162cd933e2be498cd2267a90534a804051b11`; fantom `0x3cceb477fcb6cde90180983642486e68148d7b27`; fantom `0x46e7628e8b4350b2716ab470ee0ba1fa9e76c6c5`; fantom `0x56ee926bd8c72b2d5fa1af4d9e4cbb515a1e3adc`; fantom `0x5965e53aa80a0bcf1cd6dbdd72e6a9b2aa047410`; fantom `0x5c021d9cfad40aafc57786b409a9ce571de375b4`; fantom `0x5dc7848bf215f1d99f2af3d2bf78fcdf238ee34b`; fantom `0x623ee4a7f290d11c11315994db70fb148b13021d`; fantom `0x627524d78b4fc840c887ffec90563c7a42b671fd`; fantom `0x657a1861c15a3ded9af0b6799a195a249ebdcbc6`; fantom `0x6a07a792ab2965c72a5b8088d3a069a7ac3a993b`; fantom `0x6f86e65b255c9111109d2d2325ca2dfc82456efc`; fantom `0x74b23882a30290451a17c44f4f05243b6b58c76d`; fantom `0x753fbc5800a8c8e3fb6dc6415810d627a387dfc9`; fantom `0x82f0b8b456c1a451378467398982d4834b6829c1`; fantom `0x841fad6eae12c286d1fd18d1d525dffa75c7effe`; fantom `0x89d9bc2f2d091cfbfc31e333d6dc555ddbc2fd29`; fantom `0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e`; fantom `0x91b39d5584e2a7dc829f696235742cc293f2e8cf`; fantom `0x956de13ea0fa5b577e4097be837bf4ac80005820`; fantom `0xa48d959ae2e88f1daa7d5f611e01908106de7598`; fantom `0xae75a438b2e0cb8bb01ec1e1e376de11d44477cc`; fantom `0xb01e8419d842beebf1b70a7b5f7142abbaf7159d`; fantom `0xb3654dc3d10ea7645f8319668e8f54d2574fbdc8`; fantom `0xb471ac6ef617e952b84c6a9ff5de65a9da96c93b`; fantom `0xb77b223490e1f5951ec79a8d09db9eab2adcb934`; fantom `0xbf4d61d4cec3a9dff7452d8987e1cc2943e2eb4c`; fantom `0xd0660cd418a64a1d44e9214ad8e459324d8157f1`; fantom `0xd6070ae98b8069de6b494332d1a1a81b6179d960`; fantom `0xd67de0e0a0fd7b15dc8348bb9be742f3c5850454`; fantom `0xddcb3ffd12750b45d32e084887fdf1aabab34239`; fantom `0xe120ffbda0d14f3bb6d6053e90e63c572a66a428`; fantom `0xebf374bb21d83cf010cc7363918776adf6ff2bf6`; fantom `0xec7178f4c41f346b2721907f5cf7628e388a7a58`; fantom `0xf0702249f4d3a25cd3ded7859a165693685ab577`; fantom `0xf16e81dce15b08f326220742020379b855b87df9`; fantom `0xf3582dbaebb4287b462f00d308911621a960a5fd`; fantom `0xf84e313b36e86315af7a06ff26c8b20e9eb443c3`; fantom `0xfd0ab56b83130ce8f2b7a4f4d4532dee495c0794`; fantom `0xfdb9ab8b9513ad9e419cf19530fee49d412c3ee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256686 | `0x40f70b72796c30f355df859b2c8f94f18c38adf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256688 | `0x7928a2c48754501f3a8064765ecae541dae5c3e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256690 | `0x838c010f57889195c88f2097488e49b7ad04ecb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256691 | `0x9c04f7a1506abdde1a3bb8ab1a2da520bdf79e68` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256693 | `0xb39d21718e24de36fdd8c5c73e928b5eff33d6c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256695 | `0xb9507f2ed171d52c5c2efaeabde440d264504a92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-256696 | `0xbaa8353cc9d02733ef12f9556ed999521f6e554c` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 177
- Live contracts: 3
- Unknown liveness contracts: 174
- Source-verified contracts: 135
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=37, contamination review=23, exact address book overlap=2, source verified unclassified=73, unverified unclassified=42

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | ConfigRegistry<br>`0x33e1cc3035a2f779a0bc7157d8f2b2d1ad956b00` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | ERC1967Proxy<br>`0x053714a436ea716e14b3430f2ee8e2488c83f16a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | ERC1967Proxy<br>`0x1109f1a00fbe5c44555a543540bb2db2c15c81db` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | ERC1967Proxy<br>`0x4c0b5bfd9b7a970e24ce5d62af510258c99e9ec7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | ERC1967Proxy<br>`0x5d3850377c22dd8b154161d07102b60ef4d3cf2b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | ERC1967Proxy<br>`0x65f2358801ece9e06d283d0d80f3e6ca7a7c3477` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | ERC1967Proxy<br>`0x78d97679b6582eb0adfd2b1b52a7dced76d94c69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | ERC1967Proxy<br>`0x826c8465b6e6a0ca6454cc15703b60101f171d8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | ERC1967Proxy<br>`0x9e70d16f16bbb97d1f1d5dab9fdb8e071f2b56cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | ERC1967Proxy<br>`0xaa0944ea173d300945ee5f13ae49560643e02c14` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | PositionsManager<br>`0x31b57e9dadc3227400bf1742fc9692ebb3749a4b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | ProxyAdmin<br>`0x3e09dbfe0f6e82b8448a11fb082d44cd575849d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0x3e864a2ae46fa8e7eaac25012f517907f3ace120` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0x6255ab31db76f82fda66d0bca46bbe221f8b8909` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0x6b44c878f869cf742a6d4dd60180a19c3b09716e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0x84da347c0fe5ce5d03470ecb174d5c6d66f3f191` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0x87fc464fa528260f1eeab94fa20f73fed8536eb7` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0x8f371825ee8dbe65d221d1aeb143778006ea5787` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0x9303e1783a99f1ee4dbf0f78ce4832b4d475802c` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0xae16f9d330f37e8f077d2280ac0433bce7c7f16a` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0xb6e3b44975f2966707a91747f89d2002ff8d62db` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0xccde63f39d7d528ab270375a960c748238d37f77` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0xd7a652118799b7a84478982a0b68ffa7f78c7133` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0xdb91d232e93969130272de309d3d914547604426` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0xfc3f164042a1da15287a8fc682f0298f1fee4864` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | ProxyAdmin<br>`0xfc4ac3af357ebe6d556dcd72453e9b30f6dc6873` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | SwapRouter02<br>`0xb75efbe431444667bbfc0b9faba9eab33e270445` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| candidate review | SwapRouter02<br>`0xb8d86732fe95d3168669f4b2b73eda00fbc54d31` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| candidate review | TransparentUpgradeableProxy<br>`0x31b68b75a817d74fad9a9cb04b63ab9b61ef0303` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | TransparentUpgradeableProxy<br>`0x62a572120530a6cbbcafb7c6fb8c94fbdedcd70a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| candidate review | TransparentUpgradeableProxy<br>`0x7d387771f6e23f353a4afce21af521875c0825d0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | TransparentUpgradeableProxy<br>`0x8141c1840f7d190cd24239c22b1e560e08999b12` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | TransparentUpgradeableProxy<br>`0x8a8cf91dc8f5c93f6bad1dc69961c3d768d4595c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | TransparentUpgradeableProxy<br>`0x960bdccee3ccb6b26db9e070713d92657de3a020` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | TransparentUpgradeableProxy<br>`0x9fa4923601b951d22bf72311b69251f196c9d69d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | TransparentUpgradeableProxy<br>`0xf25f5aab4e26e75c09ac665c66943ac11b48ae4c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| candidate review | TransparentUpgradeableProxy<br>`0xffd7c82bbf7e44fb986c4ae34e376cd674b670f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| contamination review | AccountFacet<br>`0x5b5c7b6494ec52d9316a7f578ef3fbbbaa53be63` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | BridgeFacet<br>`0x6273242a7e88b3de90822b31648c212215caafe4` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | ControlFacet<br>`0x0b60140dcc98a6a9e9985ab165dc54903861d50a` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | DiamondInit<br>`0x1a521c6a05d56a52b9203b6f5d86dd0f2e8d38b4` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | DiamondLoupeFacet<br>`0x01e822aae6d2cc456804ccd36aa4d3830dbc6e3b` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | FeeSender<br>`0x2bb0bda25fbf103176337551729741b4d5748e0b` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| contamination review | FundingRateFacet<br>`0x0eb92f476a9a74b15a9fdcc6c252b2013afc2dec` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | HedgerPartyBV4<br>`0x00c069d68bc7420740460dbc3cc3fff9b3742421` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| contamination review | HedgerPartyBV5<br>`0x6b2903a4a690422c2120a0ad9e68e9807ed1576e` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| contamination review | HedgerPartyBV6<br>`0x2e7b7fe1c3625aa0e21772dc174e22c7f80de684` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| contamination review | HedgerPartyBV7<br>`0x3844ded07a515d7d18073538d553d298d259784b` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| contamination review | LiquidationFacet<br>`0xc258535aaf6ad3ced5d2e03e2b66c35262488309` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | MessageBus<br>`0x63c379522f8e56e4af9683fbcf53ee1093f8c654` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| contamination review | MPTProofVerifier<br>`0x838e5d1d78d634fc43430dbd5ebb9319cf5f8c3c` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| contamination review | NonfungibleTokenPositionDescriptor<br>`0x7d0776b117c87f4bc174870ec19719972853d32d` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| contamination review | PartyAFacet<br>`0x0392e9cf758cd1566dab547fdaf3ddcfed1d7375` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | PartyBGroupActionsFacet<br>`0x8768ff7d7e1ff95a583159d573fd1708dd6c7001` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | PartyBPositionActionsFacet<br>`0xc4bae634c692078a97beb7b0b583d16b13359fcf` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | PartyBQuoteActionsFacet<br>`0x0188b538faf03c695f154a6e324513453fafb8a1` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | Quoter<br>`0x593856bbfd6aaf0b714277c0bf06307900d1aa68` | project_anchor | unknown | live | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| contamination review | SettlementFacet<br>`0x1037b57f7496d10d72f81446ba52fee7d8c8ead7` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| contamination review | TickLens<br>`0x71d0f7b02e76c773693ade6f521cfc7becac1bac` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| contamination review | ViewFacet<br>`0x1347a83d1eb2121b15f944b21ddbe22ebf8cf8d1` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| exact address book overlap | QuoterV2<br>`0x3f2026cae76b987c4002e62b9df70988b4388234` | project_anchor | unknown | live | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| exact address book overlap | TickLens<br>`0x7b97e8c53f1b4fe7f0c330583b89bd3038554449` | project_anchor | unknown | live | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | AccountFacet<br>`0xb74629900981f2977cd7a8e37052fee0d7a4c395` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | BooOFT<br>`0xb8fce759094d368c922ffe6ffa73154ab2fa4156` | non_address_book | unknown | unknown | verified | n/a | `0x4a14507784fecb4bbeadf5e8d34dc5cf5b7f22a7` |
| source verified unclassified | BrewBooV3<br>`0x79710d58c3600401fe21e799ff97f37100c8b179` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | BrewBooV3<br>`0x84a190dc9a1de94495715f5deaa0defc906b09b0` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | BrewBooV3<br>`0xc3815bf058fb94243ebc6c559dfc59ceaeef00ea` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | Bridge<br>`0xf06a648cd013990c237318cb49a56bb54e2cd698` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | Bridge<br>`0xf771463d1e9524574d7117f90c5b1d66a1a3e079` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | BridgeFacet<br>`0x9d4c169703bb0116751a6965952a5e4adfdffb05` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | ControlFacet<br>`0xe6a62ca9da02f43978ad726907ba26558509259d` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | Diamond<br>`0x464873026877c9d947e2778a1b4cb4a3cbc688f0` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | DiamondInit<br>`0x2ecc7da3cc98d341f987c85c3d9fc198570838b5` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | DiamondLoupeFacet<br>`0x6ae14800c45ae9383db2c3f2ee6019ebe1e32403` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | FiatTokenProxy<br>`0x29219dd400f2bf60e5a23d13be72b486d4038894` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenProxy<br>`0x391071fe567d609e4af9d32de726d4c33679c7e2` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenProxy<br>`0x3fd4eaa6f9b0b46bb8a2dbe8c646524e141ee783` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenProxy<br>`0x7657f03eef1b05996b02eeeb89a0683a5b61fe35` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenProxy<br>`0xba2b70309db7ec370e68240cf1f05580cdb0e563` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenProxy<br>`0xe715cba7b5ccb33790cebff1436809d36cb17e57` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenV2_2<br>`0x229e64252e2901a424600e22c28a722404d92dcc` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenV2_2<br>`0x23af4836dd12e9c40269965eb41a88aefd544c1a` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenV2_2<br>`0x35d51107aacd80ee8ad3751170d70cf4ce186535` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenV2_2<br>`0x767628f6e5d5bb6b4e47c805ae6ab7fee29a0801` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenV2_2<br>`0xb070ad54d66ee7efa2bdbfff9628ffafd247db87` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FiatTokenV2_2<br>`0xde95b31cae2ae5a63b9ae23252686684f29e09b3` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | FundingRateFacet<br>`0x359ae1329f4070f81079b415249fb13664b6ce76` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | HedgerPartyBV4<br>`0xdfed11fe4af63b059edbbdf53e9c633b331ed432` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| source verified unclassified | LeverageFiller<br>`0xfe4a47e10ee3b270b43972629e9a93ee0ab31e7d` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | LiquidationFacet<br>`0xcf74c49be20351ef069e3f32b6e646d4b2ba69d9` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | MasterMinter<br>`0x3c05fae3805e4dbdec04e56adc5ee493194996ed` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | MasterMinter<br>`0x589cfd082b670998f4181cc6007931966f94bec7` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | MasterMinter<br>`0x7bc1cf3eee9c3aca357133c5ebc6d575f63ba48e` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | MasterMinter<br>`0xad9ed0a257a5ddbc39f625f2619b4cb036570393` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | MasterMinter<br>`0xafcb4b8a55abc2b389a510cc53da415a2e2002d0` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | MasterMinter<br>`0xbe9f04237f6603d92fee25e36ab5dd4fd263b954` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | MasterMinter<br>`0xc787a98e3312c1f8ad7b04dc1fc1502a9a4f8be1` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | MessageBus<br>`0xa71610b94c6160f9d484d9921aae910f64955006` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | MPTProofVerifier<br>`0xa13fc0eeed7c66855798ca8402960f11804da6d0` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | MultiAccount<br>`0x1ecabf0eba136920677c9575faccee36f30592cf` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| source verified unclassified | MultiAccount<br>`0x4bd822749416543da46eee10fc9e7f173c1310d8` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| source verified unclassified | MultiAccount<br>`0x8a67b0449b0a83d1f7fdb39938bb6145a93fb2ae` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| source verified unclassified | MultiAccountV2<br>`0x3300433ca6832fc095506449fc1ab0bf3bf09a70` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| source verified unclassified | MultiAccountV2<br>`0xce932c61904a586c35ddff6e0403f848503bf2fa` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| source verified unclassified | MultiAccountV2<br>`0xfca1a845f78ee2031991307e0c5574294c29acc6` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| source verified unclassified | NFTDescriptor<br>`0xa5ae26ac861375a6830caf1443ed385298046856` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | NonfungiblePositionManager<br>`0x8392166e9e45fb568d84c9ab3cd7566977db3b55` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | PartyAFacet<br>`0x5e0663deb8683b70e0ff36e6e6e0dfa0f0069934` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | PartyBPositionActionsFacet<br>`0xd6ee1fd75d11989e57b57aa6fd75f558fbf02a5e` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | PartyBQuoteActionsFacet<br>`0x3adc81cc43d9e1636de9cbac764afcb1f3ae6cde` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | PrizeToken<br>`0x40dcf9db8b2335bcdc006e27db7f8148b0d267e3` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | Quoter<br>`0x746c97f670f1747bbec5c451eb3a6ccd257f78e1` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | Quoter<br>`0xddafeb8d9e6d2a47630a999a8c62fa3ad99c6a47` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | QuoterV2<br>`0x6e70f818440aac65859ea225e653010effb525bc` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | QuoterV2<br>`0xd71a77b3c9621ae62669a0d8f5aeed4bb0b4b6b3` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | SettlementFacet<br>`0x8f06459f184553e5d04f07f868720bdacab39395` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | SignatureChecker<br>`0x01798076f71e0e48c37b670af7752d74d6e6bf1b` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | SignatureChecker<br>`0x26c060a219d77bc0bb0e3e7131f50a51cf7d4e81` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | SignatureChecker<br>`0x5d03117ddd9ca5455913afe3b3b8a7c2b068f887` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | SignatureChecker<br>`0x6edf3f3a5ccb6a9c3535c1bd62b666b770b6d820` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | SignatureChecker<br>`0xb4a197efc9f11b460e11ea7a819eeb2c902dd7cf` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | SignatureChecker<br>`0xb90f6a672aee6f895e5ac50ad3a1a88868b502fe` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | StateOracle<br>`0x6494ce4a3f9b3b765fbd07aa7ec2d3108e66d684` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | StateOracle<br>`0xad9f40b195d46203b17d2f3302976e7520e150b9` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | SymmCoreCaller<br>`0x9fd1fd7910f61cc6f5a18ed4916fa0c0f40a7c3c` | non_address_book | unknown | unknown | verified | n/a | `0xc07c1b411cb1f4bae8b3a96502e67d471bd74846` |
| source verified unclassified | SymmioFeeDistributor<br>`0x99886d393329681ed35042854b18d82c7ad95519` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | SymmioSymbolManager<br>`0x3cce951445efe9b7f6f9c08119ca27e5919c2776` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| source verified unclassified | TicTacToe<br>`0x88217164e88201227c76a888d18ba507cd1dcb47` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | TokenPairs<br>`0x36535d7bbfc61e2336faae501f38d77ccdf9cd43` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | UniversalRouter<br>`0x8762fc1fd03807fddef245f092f6e4d3f93acd97` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | UpdateManager<br>`0xa432cfb45b61a19acde9e9b60f9d6b8f3420187a` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | UpdateManager<br>`0xb63f4eccf7799b1cd278e60d0d465017ccd5f0d3` | non_address_book | unknown | unknown | verified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| source verified unclassified | V3Migrator<br>`0x9e5b69896022aca2b05f198f7e0125b41d799f80` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | V3Migrator<br>`0xc86bd08f735e40f82a854bf0e0986091a3e8c191` | non_address_book | unknown | unknown | verified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| source verified unclassified | ViewFacet<br>`0x4d8e97f44cd90504e790827137334d9a42bbec55` | non_address_book | unknown | unknown | verified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| unverified unclassified | UnnamedContract<br>`0x0ae71c8f93af79417c5e2fd796ec2a288626f17c` | non_address_book | unknown | unknown | unverified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| unverified unclassified | UnnamedContract<br>`0x0df6281a09d39dd59e90ae2ad088f1d21947174f` | non_address_book | unknown | unknown | unverified | n/a | `0x4a14507784fecb4bbeadf5e8d34dc5cf5b7f22a7` |
| unverified unclassified | UnnamedContract<br>`0x1a2dd14da3858cb913207575e699937a307a0cc1` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x1fac89ea9757be6f7f040ac88853458c6c026f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x4a14507784fecb4bbeadf5e8d34dc5cf5b7f22a7` |
| unverified unclassified | UnnamedContract<br>`0x2071a84b76cb9d3f2c2c25c04af327287d637be3` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| unverified unclassified | UnnamedContract<br>`0x352866b5c559a3292144263ddd937cc3b8b4c0e7` | non_address_book | unknown | unknown | unverified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| unverified unclassified | UnnamedContract<br>`0x3d9cd8a63e2769b761fadd6e867221c8381938c3` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x3faf5b5d4355aee4b9381147dcac8d7f1b5a4876` | non_address_book | unknown | unknown | unverified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| unverified unclassified | UnnamedContract<br>`0x44ca93531be2872a1e6e9987bc8f2d62c0864676` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| unverified unclassified | UnnamedContract<br>`0x4a5f9a946d23f43cced8e6bbf783f45592148568` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x50e88c692b137b8a51b6017026ef414651e0d5ba` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| unverified unclassified | UnnamedContract<br>`0x5f985705a9ed0cd2561c8d69e77b66ce99d9f3e8` | non_address_book | unknown | unknown | unverified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| unverified unclassified | UnnamedContract<br>`0x63ad1a0b191687fcaaa1bccb824421aeada31527` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x643c5bd74da7d37f60615562bc2b1dbf2b73d55f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x6697eefaff6e8cc532115c8d0a51164f92e0e324` | non_address_book | unknown | unknown | unverified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| unverified unclassified | UnnamedContract<br>`0x6a8c15229ffd048dcfff3d05eaa5c1a70e6c599c` | non_address_book | unknown | unknown | unverified | n/a | `0x4a14507784fecb4bbeadf5e8d34dc5cf5b7f22a7` |
| unverified unclassified | UnnamedContract<br>`0x6b0d9fa54cec03e83a6b08400228c2afd291a83d` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| unverified unclassified | UnnamedContract<br>`0x70d1f613af7345cb1ef7999e6868cd11c8ad90ea` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x775525b3e7569057c29c31bdd6bc9c90fd81f835` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x78f6a74a0074a0353349e070368e6d2d587bb2e9` | non_address_book | unknown | unknown | unverified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| unverified unclassified | UnnamedContract<br>`0x836b8c114ac6301e1e96bbea7b00a99b1fc6aa4f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x8482eb00293a0c8703ed43feb42629a2f12a5f7f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x858657908d257cff5f72aba48b857c9b848ce686` | non_address_book | unknown | unknown | unverified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| unverified unclassified | UnnamedContract<br>`0x86aa8e40c5258a94bd2428e8ea55621e376a1084` | non_address_book | unknown | unknown | unverified | n/a | `0x4a14507784fecb4bbeadf5e8d34dc5cf5b7f22a7` |
| unverified unclassified | UnnamedContract<br>`0x8d47c22f331d3851fe0f5c8085c81bff6b2ab93c` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x910afaa218ce5228f024252a1ea69780dcd3caa5` | non_address_book | unknown | unknown | unverified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| unverified unclassified | UnnamedContract<br>`0x912060d9c7244a7601276c16ccb5be258f1335df` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x94e84861513304fb2e20491408a410889374904f` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x97bc7db6c898473bdbcce5f46250e30dc96f0b0d` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0x9943afde8779fc05334c1577812b29b36fb4e674` | non_address_book | unknown | unknown | unverified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| unverified unclassified | UnnamedContract<br>`0x9d0d2c55d98d86b4377fb9cf60871bed5c18a910` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0xb7d1d27221f636da91300288dc012927e3589533` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0xc3b6680629b7cc2130e131485f169c8c51dc6d31` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0xc6b9df7c769ce5689da6b98a852d1b0d588e2403` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0xcc96a349d1627ccc07628cadbee7ab7e3031020e` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0xe607f56463bf9cdc776ba630084ab542f2380f5a` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0xe85df5c4e588fb0dd4af2436820429a3eb7ef797` | non_address_book | unknown | unknown | unverified | n/a | `0x83a6524be9213b1ce36bcc0dcefb5eb51d87ad10` |
| unverified unclassified | UnnamedContract<br>`0xecbd0788bb5a72f9dfdac1ffeaaf9b7c2b26e456` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| unverified unclassified | UnnamedContract<br>`0xf39352ec34a007b2726e2c4610a13f7aea86684e` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| unverified unclassified | UnnamedContract<br>`0xf738659243be53148eaa8937eaac5e55c0424a9e` | non_address_book | unknown | unknown | unverified | n/a | `0x9bc9ca7e6a8f013f40617c4585508a988db7c1c7` |
| unverified unclassified | UnnamedContract<br>`0xfb9114dbd11450444e7b2ca7a6b666151784079a` | non_address_book | unknown | unknown | unverified | n/a | `0xf3dcc59bac37a6dd042099bd898f4e24b07712b2` |
| unverified unclassified | UnnamedContract<br>`0xfbbb87b674adffe7313ed6217451200632447b28` | non_address_book | unknown | unknown | unverified | n/a | `0x4a14507784fecb4bbeadf5e8d34dc5cf5b7f22a7` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/spookyswap](https://skynet.certik.com/projects/spookyswap) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3096] skynet.certik.com/projects/spookyswap — no match: Extracted from CertiK Skynet page for SpookySwap; contracts named in audit list but no file paths or addresses provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/spookyswap | SpookySwapFarm | unmatched — not counted | — | listed in audit report as 'SpookySwapFarm' | no |
| skynet.certik.com/projects/spookyswap | SpookySwapCore | unmatched — not counted | — | listed in audit report as 'SpookySwapCore' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0xf807aca27b1550fe778fd4e7013bb57480b17fac` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x593856bbfd6aaf0b714277c0bf06307900d1aa68` | Quoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x3f2026cae76b987c4002e62b9df70988b4388234` | QuoterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xb52c0eb864722c313d2c084c6ffa2a6e46850c31` | SpookyLaunchpad | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x0c2bc01d435cfeb2dc6ad7cec0e473e2dbabdd87` | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x7b97e8c53f1b4fe7f0c330583b89bd3038554449` | TickLens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 4 |
| standard_library | 4 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [3096] skynet.certik.com/projects/spookyswap

Fork inheritance lineage and inherited audits are included when available.
