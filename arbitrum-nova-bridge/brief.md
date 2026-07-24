# Agentic Audit Brief: Arbitrum Nova Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 30 (0 matched; 30 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

⚠️ Lifecycle status: DECLINING - TVL dropped 52.1% over 90 days

## Project Overview

- Project: Arbitrum Nova Bridge (`arbitrum-nova-bridge`)
- Website: [https://portal.arbitrum.io/bridge?l2ChainId=42170](https://portal.arbitrum.io/bridge?l2ChainId=42170)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, ethereum
- Contract surface: 338 unique implementations (450 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $9,906,466.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Arbitrum Nova Bridge in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0000000000000000000000000000000000000066`, chain 42161)
- UnnamedContract (`0x5288c571fd7ad117bea99bf60fe0846c4e84f933`, chain 42161)
- UnnamedContract (`0x842ec2c7d803033edf55e478f461fc547bc54eb2`, chain 42161)
- UnnamedContract (`0xb90e53fd945cd28ec4728cbfb566981dd571eb8b`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/92 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 22 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 312 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 4 of 338 unique; 334 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/61
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 277
- Unique implementations: 338
- Raw deployments: 450
- Audits discovered: 30 (30 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 16 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumBridgeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c39bd79dcd8827c9bdf54c04b683cdc89fd0b13` | ⚠️ Unaudited |
| ArbOneAIPArbOS31UpgradeChallengeManagerAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19b715cf310c28c9020e53aaa11ce9df42e718b5` | ⚠️ Unaudited |
| BOLDUpgradeAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd25b258b55765c9fb5567ecabb6114b03b0f78b5`; ethereum `0xf795ec38701234664f69dbd761ee9c511f25ac1d` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x041752178b4a7b6800cc38260f3d443fc868fa7a`; ethereum `0x298e5c615a9bdded7814e137b2b63c62fbcaa43d`; ethereum `0x677ecf96dbfee1defbde8d2e905a39f73aa27b89`; ethereum `0xc26bc91f516f02c540f62943ad1b6ab5fd46e29a` | ⚠️ Unaudited |
| Bridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc1ebd02f738644983b6c4b2d440b8e77dde276bd` | ⚠️ Unaudited |
| BridgeCreator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xe38f0215b96ef5bd6450d5d0a3464f0432bfa04a`; ethereum `0xe98c12c1aa68fa37c174dffcd1811364477bec5e`; ethereum `0xf2c8b215dc8b82507a621809cc154187a7965c1c` | ⚠️ Unaudited |
| ChallengeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x02e05a9245c5853f895dadcc3a8216c953c8736b`; ethereum `0x1440955812f191453aba5e09b9f74988c80f156e`; ethereum `0x914b7b3053b35b84a24df08d7c9cebcaea4e2948`; ethereum `0xbd5be96869f1149b296d52944a2f08600eb1f97a`; ethereum `0xe129b8aa61df65cbdbae4345ee3fb40168dfd566` | ⚠️ Unaudited |
| DeployHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x15b7911c2974dfa95ae12192e2a3387b204c1f32`; ethereum `0x524c56448d9c2c2f17f99bc85a3a3c0456d4980b`; ethereum `0x6319ff757edab7196376cc6104362057dacf6ec7` | ⚠️ Unaudited |
| DisableGatewayAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d3425f7039645223517f6f6e60ef04c28f4188f` | ⚠️ Unaudited |
| EdgeChallengeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x058e1cbb62096189bc7cc1fe08a0859905d969ea`; ethereum `0x93069ffd7730733ecfd57a0d2d528cf686248524` | ⚠️ Unaudited |
| EnableFastConfirmAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe102b527075b028b6bc6f4d4f11292d2f8a6673d` | ⚠️ Unaudited |
| ERC20Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x81be1bf06cb9b23e8eeda3145c3366a912dad9d6`; ethereum `0x9f6a999626add08991c7c3752b9d510a085bcf96`; ethereum `0xd721556db42fc5ea529870ebd2196156063721c7`; ethereum `0xefa1de858293593732a09c9daa238bec49595751` | ⚠️ Unaudited |
| ERC20Inbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xd210b64ed9d47ef8acf1a3284722fcc7fc6a1f4e`; ethereum `0xd5dcf625e1fd5c338ce09bbe27e02e8dafc1880a`; ethereum `0xef56eebd29ba736094f23e57aae075685fb9bd6d` | ⚠️ Unaudited |
| ERC20Outbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1032615db60c64b902b8f1255afc97270acfe7f7`; ethereum `0x17e0c5fe0dff2ae4cfc9e96d9ccd112daf5c0386`; ethereum `0xdf7031a87549b4ae2bc692091973dcea0fbc0e5f` | ⚠️ Unaudited |
| ERC20RollupEventInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0d079b22b0b4083b9b0bdc62bf1a4eaf4a95bdee`; ethereum `0x2ec583c6f24c8b03c471dc01efb6dd69360e49cb`; ethereum `0x60ced0a2b95d85e1c81203c44a6301fc456908ea` | ⚠️ Unaudited |
| Inbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1b2676d32e2f7430a564dd4560641f990dfe3d6a`; ethereum `0x5aed5f8a1e3607476f1f81c3d8fe126deb0afe94`; ethereum `0x9c4ce5ef20f831f4e7fecf58aaa0cda8d3091c35`; ethereum `0xa8ad1d77321443282cdc1f5fb348c2e01c311bf5`; ethereum `0xc23e3f20340f8ef09c8861a724c29db43ba3eed4`; ethereum `0xc47ec337a63d83293858653a1ae5cd8a1d2915d9` | ⚠️ Unaudited |
| Inbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc4448b71118c9071bcb9734a0eac55d18a153949` | ⚠️ Unaudited |
| L1CustomGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x23122da8c581aa7e0d07a36ff1f16f799650232f`; ethereum `0xc8d26ab9e132c79140b3376a0ac7932e4680aa45` | ⚠️ Unaudited |
| L1CustomGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97367486f5905c2b7ee7b58330fb4eb52639db17` | ⚠️ Unaudited |
| L1DaiGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x97f63339374fce157aa8ee27830172d2af76a786`; ethereum `0xd3b5b60020504bc3489d6949d545893982ba3011` | ⚠️ Unaudited |
| L1DAITokenBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10e6593cdda8c58a1d0f14c5164b376352a55f2f` | ⚠️ Unaudited |
| L1ERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb2535b988dce19f9d71dfb22db6da744acac21bf`; ethereum `0xb4299a1f5f26ff6a98b7ba35572290c359fde900` | ⚠️ Unaudited |
| L1ERC20Gateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf852de96ad5ca30d54b40b9ce5c8c6de56c0ef4b` | ⚠️ Unaudited |
| L1Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x467194771dae2967aef3ecbedd3bf9a310c76c65`; ethereum `0xa10c7ce4b876998858b1a9e12b10092229539400`; ethereum `0xa2e996f0cb33575fa0e36e8f62fcd4a9b897aad3` | ⚠️ Unaudited |
| L1GatewayRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x52595021fa01b3e14ec6c88953afc8e35dff423c`; ethereum `0xc840838bc438d73c16c2f8b22d2ce3669963cd48` | ⚠️ Unaudited |
| L1GatewayRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6d1c576fe3e54313990450f5fa322306b4ccb47b`; ethereum `0xa9610559f1e5bb0eab9a25e21137d39426fd477e` | ⚠️ Unaudited |
| L1GovernanceRelay | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x09b354cda89203bb7b3131cc728dfa06ab09ae2f`; ethereum `0x9ba25c289e351779e0d481ba37489317c34a899d`; ethereum `0xb90ab1055fc1d314be197f2385a2900347621d78` | ⚠️ Unaudited |
| L1Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3dbc4f88eaa632ddf9708732e2832eeaa6688ab` | ⚠️ Unaudited |
| L1WethGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1986a7d7a9bb6cdbd87460bc2381d012071de0b1`; ethereum `0xcb5e8875563ca959b729a522d65dbba91c4d0728` | ⚠️ Unaudited |
| L1WethGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6299838c8254b59213eb56d158ebe562d23c4936`; ethereum `0xb63762dfdaaf0f665a1f387e9b29699f22ac409c` | ⚠️ Unaudited |
| L1WethGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe4e2121b479017955be0b175305b35f312330bae` | ⚠️ Unaudited |
| L2ArbitrumToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x912ce59144191c1204e64559fe8253a0e49e6548` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8896d23afea159a5e9b72c9eb3dc4e2684a38ea3` | ⚠️ Unaudited |
| NitroContracts2Point1Point0UpgradeAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e0049b901531aee041ad0d63faeeeffbf442225` | ⚠️ Unaudited |
| NitroContracts2Point1Point2UpgradeAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ee30c74b3ce1aeb38163db3e7d769d9735542f` | ⚠️ Unaudited |
| NovaAIPArbOS31UpgradeChallengeManagerAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x658afc9d5ec4476fa6bb7033ea465f9901fbff27` | ⚠️ Unaudited |
| OfficeHoursAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0da0e898d593b330a63044492ffbbf4a553ee915`; ethereum `0x561ee2c448c25ba709ed23b1cf97ab2ee38e2a28` | ⚠️ Unaudited |
| OldOutbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x667e23abd27e623c11d4cc00ca3ec4d0bd63337a` | ⚠️ Unaudited |
| OneStepProofEntry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x4397fe1e959ba81b9d5f1a9679ddd891955a42d6`; ethereum `0x4dc0d390025336a2ad7bf2058bacd7aeb89b151f`; ethereum `0x83fa8ed860514370fbcc5f04ea7969475f48cfeb`; ethereum `0x8f4985d6c62124f5716ef83ed1846a49624390f8`; ethereum `0x8faa21891b0b928afebd5314d1d313f8f7b34dac`; ethereum `0x91cb57f200bd5f897e41c164425ab4db0991a64f`; ethereum `0x95b1e64710ce30cf9346f7b9c6cb9366282e3c7c`; ethereum `0xa328baf257a937b7934429a5d8458d98693c6fc7`; ethereum `0xc6e1e6db03c3f475bc760fe20ed93401ec5c4f7e` | ⚠️ Unaudited |
| OneStepProver0 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x2733206827d957b6a0c6417e4eed5ba59eaaa7a4`; ethereum `0x2dccabe89cf76132619a9b18e9f9e48e837222b5`; ethereum `0x3111ba6e3c8c16502dbf3c2553816268e73f410d`; ethereum `0x35fbc5f03d86e88973b06fb9c5a913d54abdf731`; ethereum `0x7368f782e109518fd3914e8b315ee45e51c15835`; ethereum `0xa174e12ff8c6b18b37feca77d6d350d89379a58c`; ethereum `0xa4ac119b4affb14ce7cffd2563f278794b921d1e`; ethereum `0xd0465e3356213869f1fae38b3e67cbf4e873c5b6`; ethereum `0xe0e0f91bc7bc1755a93995e1132b4e20abba97bf` | ⚠️ Unaudited |
| OneStepProverHostIo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0003a96b27ce73505b43ea1b71a5ab06bec568c4`; ethereum `0x350608d101a83486eb1d73a98f37675a93662b14`; ethereum `0x593ae406d00799dce219577eff73fc1f50ad3841`; ethereum `0x8d78382913467cd25374c75ba918b0a723bc2544`; ethereum `0xa07cd154340cc74ecf156ffb9fb378ee29ca71cf`; ethereum `0xd7f12e7418b007ad7a5c7acbbf460d3cfe92a63e`; ethereum `0xddad5e59d056078a4e67a9d42e21ce8057f22d60`; ethereum `0xe427ddacd5975fee51764980a47acb5f328df76f`; ethereum `0xf2d894c2b6c12371b37a712f28de54387192c81a` | ⚠️ Unaudited |
| OneStepProverMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x0a875dd455945bc2f8ec50f11a15a58f564d261d`; ethereum `0x221ccc45985fdd24e33c3f19c6b7d48c02d5dcaa`; ethereum `0x2c785e954c376be0ceff4a7db92e053b0830f7c9`; ethereum `0x97af30e86a398d4930bedaa356b68a97912f71bf`; ethereum `0x998e0296dfd9a1a53b91086d7e1e1f5302a5351f`; ethereum `0xa8de82cea3206d32933918fbe38b360b23fe642b`; ethereum `0xab9596a0aaf28bc798c453434ec2dc0f8f0bf921`; ethereum `0xcf4b98cff2976e4eb579b9498f398b5bd279a6ed`; ethereum `0xd1d75248ed95450b793d80f9fb418c2ed4c5f5e4` | ⚠️ Unaudited |
| OneStepProverMemory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x1cd76b9c33b2e3b04d7b181399d492b3e49ad7fb`; ethereum `0x29efff3efe3e01a3f69011a054c33410edfc2283`; ethereum `0x5c9f8663583ad0a1c0009c871f8253dbf4767a18`; ethereum `0x738a25c0ca1ebc808369f713c07b1fed34b75bda`; ethereum `0x8ff4ae66592e0255dca05045cac433d929600af5`; ethereum `0x9ef153e04e2aeb53eddb363d5bc8571e72085c96`; ethereum `0xb602d056bd6ba78c3a320660d1a45d1cc8bbd3ed`; ethereum `0xe0ba77e0e24de5369e3b268ea79fde716e2ec48b`; ethereum `0xe77319aeb0b4d91c7d6b438aa9c59f7a4d58af03` | ⚠️ Unaudited |
| Outbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x186267690cb723d72a7edbc002476e23d694cb33`; ethereum `0xa7402fdca6f5b01302a6fd0d6768e8fd132eb752`; ethereum `0xbc89410298e009fae66b5b70d389e0fd6fd5f12d` | ⚠️ Unaudited |
| Outbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd4b80c3d7240325d18e645b49e6535a3bf95cc58` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8f7dded54a726eb873e98bff2c95abf2d03e560` | ⚠️ Unaudited |
| RegisterAndSetArbCustomGatewayAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1fe2d8ad9efaef358cbd4ef6e1e9cf7148119d37`; ethereum `0x997668ee3c575dc060f80b06db0a8b04c9558969` | ⚠️ Unaudited |
| RegisterL2TokenInArbCustomGatewayAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a578141af44095a58b73b1e84a63da3267c8843` | ⚠️ Unaudited |
| RollupAdminLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x16ad566aaa05fe6977a033de2472c05c84cab724`; ethereum `0x2f9491db1920726d0cfe8ac5f1cac1f730c5dc44`; ethereum `0x72f193d0f305f532c87a4b9d0a2f407a3f4f585f`; ethereum `0x7fc126ff51183a78c5e0437467f325f661d8df17`; ethereum `0x9b56a789fedd5df27dbab53b085f7157397ca17d`; ethereum `0xbaa095103177a2e2e9304eae890e2854ec8cd635` | ⚠️ Unaudited |
| RollupCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x43698080f40db54dee6871540037b8ab8fd0ab44`; ethereum `0x62b6df2c37bc74ca5bca17fc086a0d58dfc4119a`; ethereum `0x8c88430658a03497d13cdff7684d37b15aa2f3e1` | ⚠️ Unaudited |
| RollupEventInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1ed42156d64b52100f005d7e39092d49ed47ec8e`; ethereum `0x7b6784fbd233edb47e11ea4e7205fc4229447662`; ethereum `0x98f5035ad01e6d83e271e0bc7338f5a1a8a66829` | ⚠️ Unaudited |
| RollupProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x13cf1a771156a8674fc5d4c750546888e21726bc`; ethereum `0x1ef37117b804b41d98fb2c70d94dfc3e04336b17` | ⚠️ Unaudited |
| RollupUserLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x4d42373d1d8fc9aef11477984b9be42672e12463`; ethereum `0x5607ea4b5f6e3f610bd346b36d3143fff46d1c34`; ethereum `0x5c93bab9ff2fa3884b643bd8545c625de0633517`; ethereum `0x5e7147d34eab8c86b19ded94c00f82181b5580ef`; ethereum `0xa4892ffe3deab25337d7d1a5b94b35daba255451` | ⚠️ Unaudited |
| SequencerInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x211e1c4c7f1bf5351ac850ed10fd68cffcf6c21b` | ⚠️ Unaudited |
| SequencerInbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x31da64d19cd31a19cd09f4070366fe2144792cf7`; ethereum `0x6f2e7f9b5db5e4e9b5b1181d2eb0e4972500c324`; ethereum `0x93dcfc7e658050c80700a6eb7faf12efacf5bf76`; ethereum `0x9ed1d71e3f3dd08de9cc2415a60af5c0b6553c0a`; ethereum `0xbf223aac3165ec9bdaf43420537fe68f905427d4`; ethereum `0xcc4e9e22acdf93192cf7e149d7563f6d660e9afc`; ethereum `0xe154a8d54e39cd8edaea85870ea349b82b0e4ef4`; ethereum `0xe4be5495054fe4fa4ea5972219484984927681e3`; ethereum `0xed34928506dab5dbe1d08f1912fef0029d8e9480`; ethereum `0xff2a93f6c7481846b0308a1a49501dcc75a306f4` | ⚠️ Unaudited |
| SetGatewayAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7f089c0daf0181f7afd533f5f3265301bb09d562`; ethereum `0x9a10fd6c94503953f01c9fa9493032aa5a1166c3` | ⚠️ Unaudited |
| SetValidatorsAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf94afebfbf062a88615bc012da39d0822670aba` | ⚠️ Unaudited |
| SetWasmModuleRootAction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x569117d8432d161754fc3cd7e0620e02c53a8e7d`; ethereum `0x93c34291b8d70c685b36a90ddaee959101c50fb6` | ⚠️ Unaudited |
| UpgradeExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x995f930b4a943620f1341a287c9f2cf093f6d47a`; ethereum `0xde505e42d50abd07c8d39dcf692920d56cba35da`; ethereum `0xeab0678f76f7b371f4dab44c29800e84b5662d4b` | ⚠️ Unaudited |
| ValidatorUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x166f9647b7d21e9e0076bbfeb66c66e18c7a1654`; ethereum `0x34f2d59f084f2dad4f386b8742cf2332260152a3` | ⚠️ Unaudited |
| ValidatorWalletCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x085c69a44f3df550b6666d052d4621b9b44436f1`; ethereum `0x225ea72daf733b0335bff86f7b077385395463ca`; ethereum `0xddd434ac6177bb0809183a84769fb14bc5b48858` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (277)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42a4dad048a24bad79568f068550b355c6eccb7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4482d08a89cbe77fb2433b7b2e5e366dc3135136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x826acced29b11d5c136e3607e4d824acc6d86a2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa98b1be4d5d1ca03b336d7aa95b7c0a24fb78113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1f1a77ab63671a6355fa5c8423f436118943411` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5f6951ab2504442c3f6dd37ff1e1d1d253c5097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbccf962fa0b75c2a59c258d39cf62f5335c44aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58ea0500f3d41c7549402bc1bb24a2531389639` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379445 | `0x0000000000000000000000000000000000000064` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379446 | `0x0000000000000000000000000000000000000065` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379447 | `0x0000000000000000000000000000000000000066` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379448 | `0x0000000000000000000000000000000000000068` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379449 | `0x000000000000000000000000000000000000006b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379450 | `0x000000000000000000000000000000000000006c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379451 | `0x000000000000000000000000000000000000006d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379452 | `0x000000000000000000000000000000000000006e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379453 | `0x000000000000000000000000000000000000006f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379454 | `0x0000000000000000000000000000000000000070` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379455 | `0x0000000000000000000000000000000000000071` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379456 | `0x0000000000000000000000000000000000000072` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379457 | `0x00000000000000000000000000000000000000c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01b370d9b1ed1591c64c9a4b0faff193af5fa928` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x026d77f3d0f5dd4c095fecbc802cf99290a883fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06ea6ad1037d251a23c7534171331313421b8358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x079840cc8959ef60d414e5afc6ed0493b8eaf514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08aa1648fc9d862a28aad015eeaa1ee2c2483838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08b1395a2ee51073d6b9ebf9e97fbeb09dcacaf1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379458 | `0x096760f208390250649e3e8763348e783aef5562` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09824fe72bff474d16d9c2774432e381bbd60662` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379459 | `0x09e9222e96e7b4ae2a407b98d48e330053351eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09fd6132aaf7cadb02bebc375ad82eaeb2631aae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09fda6447fa7758ea9245ac78ca3c9ba68cbfd3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ae4dd666748bf0f6db5c149eab1d8ad27820a6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f728dd0217e26120a304b3fa554c3ba2b2af535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1135265fe014d3fa32b3507e325642b92affeaeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12a132e2341ae7d24cf77ada0b5503e11a15a447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12b1389fbf261e781bdc3094d28636abfb03c5b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13be515e44eefaf3ebefad684f1fbb574ac0a494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13e7746ece329d4290b56692b968f7f0913c8942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1499ebe4b56a37e0068a2b3265bb54c4fe8d896f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x165bd50aa051637bd659e1eada63c954b48cde17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17a8d893d2ba9e31dfff9b46ae11fa3dded5115c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17e7f68ce50a77e55c7834ddf31aef86403b8010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18cc27b3a95a6fdef9eaa391eff28f48f42ffe3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18ed2d5bf7c5943bfd20a2995b9879e30c9e8dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18fd37a4fb9e1f06d9383958afd236771f15a8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19431dc37098877486532250fb3158140717c00c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1aa699687b6add34ce80885b732e75885d89af43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1bed37fedfe8b2721a69a559313d2b58d16ecd77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c6accd9d66f3b993928e7439c9a2d67b94a445f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d720642e63cb0f50be637e16e0f78b2d1b93f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d7b00c67e933ffca847a24381960ff8e91de197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d901dd7a5efe421c3c437b147040e5af22e6a43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1dcf7d03574fbc7c205f41f2e116ee094a652e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1dfa102bc097446bb2b836082367991de24a1c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e03aa1e483fce52643a801d840a22f5eee709ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ed80b2542758ed63dd9ea539ee87aefd4274d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ef281cd6bd48affd9c44cb590858fcff92de821` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x211a5579d21e1938b2b5ff87a3f7896933543e97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x230b6fec9107a0b0476477a66c4d621f9a0d1746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x234e937f1a2926737b0084fb7498772579497735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23a87a6b30d5e75f069fea7964c870a7630ebdf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23d1171380e3cbaa161f6eb31e3a3c6b548a467a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26368445c0e5ae17838d626347a000fbacc84553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26a1be24dde0571da03022493be9fd013ca62dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26f26dc12bb3eb302317675129a7d16f11a8367c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a6dd4433ffa96dc1755814fc0d9cc83a5f68dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ab445728a7db4fb767457383ca23396a4b5611a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b0e04dc90e3fa58165cb41e2834b44a56e766af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d592c021e9216f68035c5f86128df0a3e9bd6c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e0c12e2478a0dec2ef6c2ccc2ed8d4fed3597d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379466 | `0x2f5624dc8800dfa0a82ac03509ef8bb8e7ac000e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fb33d8e4a8e989e7814d914973096736ed718b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x302275067251f5fcdb9359bda735fd8f7a4a54c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31127a9c0308d8e3f6db5158a14ad674f22946d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31c8dc074d8a31cdd33925405719931457ed61f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31faaab44e74eb408d1fc69a14806b4b9ca09da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x33c1514bf90e202d242c299b37c60f908aa206d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3525f734fce1a26a6cefffca43538290dc239771` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35751b4c43461902dc98a03e1bd711fd2b816dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3930ad9a21da38e63d52b43b0c530cb0aaccb389` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3de02cf69192f4805ede47d7fa5efa614c5a6593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e9a459089758e760bea267abb9485ee5b47a909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x408e208e8f7dcde6804f4e31f90e3272ee04502d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x413aa082995f0d7672c4d564624ddebd221c8d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42b5929fdc3503e4cb31a72f247f081843afea3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x435e77c59db2b9036ac6be684b77d1667699437c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43c2668d46c82911d977ffcab8c1a13cb03a2add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44624a5eda4acdf8e9c262b0bf600c031686f5ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45fcb351851071c7107ca158f2bd3cd4510dec2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x466aa18ce75f1a3039d4c06a3c31786d0d0386c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x474b3de6d993bad662e68ef2aea050bb67847a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4811500e0d376fa8d2ea3ccb7c61e0afb4f5a7f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48b9379913888fb7f4a58a2b584a7ca1ec4fe5bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4998b99dd376a0cfff0e4b7f1ee0056f79910e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49c9e7c42cb6fb4f133e4648871d12936b05f3bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a5b394be885de0dca45aaf7fa7152457f82ebc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ab216d2bbecaa7517a1615505c8f7078ef1c123` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c240987d6fe4fa8c7a0004986e3db563150ca55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ca08847418de7860a6da0de2e5536f1cd78458a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ca8c773aff136fe9448946b6ebc25ad7673451d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f681ebb93dc2a820685ea74d881e2a4d044681e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51882b52bcc3ef8008f9f7772b0229ea2551fddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51dedbd2f190e0696afbee5e60bfde96d86464ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x526a6e634ad36bb0007c4422586c135f1f9b525a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379474 | `0x5288c571fd7ad117bea99bf60fe0846c4e84f933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52d5181dd67ac17176127e670e5baee4d47c6c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54e0923782b701044444de5d8c3a45ac890b0881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x55b64943f7518ab3185a645c6c6fc175f6443ec6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56411606380fd9ef28db1aac3897bd4a24f26606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x583f8ba007580c83efb4b02c66694096cd5c56d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5aa806015fec88669bf7dad746bb4adc1e79bced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c4d02b13378d0db345c62b3cc9811d6f9c6baf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ca988f213efbcb86ed7e2aacb0c15c91e648f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f49069667541fc85f48514aca6c10c7e33cd9a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f89646f93e360217ad7cad73a44298abc4aca9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fafdbc0c1b87c39c101c53666bf7cbd7eae3e35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5fcb496a31b7ae91e7c9078ec662bd7a55cd3079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x606bb75b1f910f82086557aa14ed2dc0beb85d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x609aa0dbb59606a9f51133c4f5f2a83d88267d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d9a46f24d5a35b95a78dd3e793e55d94ee0660` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x61006c8566fac9a3315f646da4624c00bbcf15e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x621f7268e0c981af0c1062cbd56a0e05b35bbed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6284bd731aea4ee3c576d095960b8689bd7c9eca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6448c74ff1c94df19a24545f0b9ea67f847f3ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64a0ddf7469d52828a026b98a76f194637daad2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x660ea1675f7323dc3ba0c8ddfb593225eb01e3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x676d824b9c9e79c3da2b76600db942fb8f901db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69a6de0b9bec9edb33805167327a6abef0c69fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b9a2769b259f36fbd503fec0bbf4408459a3876` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c21303f5986180b1394d2c89f3e883890e2867b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379483 | `0x6c411ad3e74de3e7bd422b94a27770f5b86c623b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c7508874c4db742fbf2f3b293621d94062ecfe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6db2bf00c397024516683ff3613b771f30543e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e031b6e9f667ed6953e627276fbbefa4c28529a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7259f157f9d7e2a401e4fabc9f44ad1519d16f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x731e8e1fcde329475643d6eb8653e224be10f213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74a5c491e9ed0263ba218aba13694d4d0e5fccc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x760c1b5fe95b2c66d67662ec544975bdbb129645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76600101e42dd9355d29741288407923268c06ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7785047a920b43d23d181c6e68fa9405c874997c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x782bc330ea15c57fc0e3d4959c2f8a38278703e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x78b101ec9736c4ab06b0833f01fd4c011f7ca612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79607f00e61e6d7c0e6330bd7e9c4ac320d50fc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x796822909dcefdc433da071c7f75001452310a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a299ad29499736994aa3a9afa3f476445faeb2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cf7e521b9259676c069599cd4de3d20104e06de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d42f098e79de006cfab475cfd50bdf2310d7ae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7deda2425ec2d4ea0df689a78de2fbf002075576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ecfbaa8742fdf5756dac92fbc8b90a19b8815bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ed9c3a779be8b742abfc17a2f15353ecbce3e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7ef5b5a0aaf44fca9e6a678e2b0464a7e074327f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7efcb76d0e2e776a298aaa603d433336e5f8b6ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f6dbaed9905c3b01030d3ad5aa93846ecbbfa44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f7c304843e6b933c01a0462cad0acc2fbb865e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x800da62be6626127f71b34e795286c34c04d6712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81f6f682ca9bb29d759ce12d7067e1c6ef533096` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379493 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x841a23c7c4e20515eaf03debd8ab60f12b5cc13e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x841a6e8230ca0f563a841eb6bf8dfe129672bdc5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379495 | `0x842ec2c7d803033edf55e478f461fc547bc54eb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8457c9fb027f3125e82caceb596d07f90c4ebe3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x850f050c65b34966895ada26a4d06923901916db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x862d1993aee44fe8fd6e13074be7712edfac4b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86c239f206a0878fb07243abb4afa932e6ace911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86cfdebdff5387137f4dc425835c281bbf9ff452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86e93e21ad108cae7ade482c34c230bfd94d4a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8838b7f8bafc208c4b2255bc0321527166654c95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x893af2923a6ad9a784f1a72dc6af7f4a34266814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x89af7c4c2198c426cfe6e86de0680a0850503e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b73ef238adab31ebc7c05423d243c345241a22f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379496 | `0x8b9d9490a68b1f16ac8a21ddae5fd7ab9d708c14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8da371823a4937e5f371b7b53876ee34d5d5e520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8e91b13eb6234083894b66a3cb6a61acece74397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f2cdfd7c96a7026c617e66ebca389c5d4e3b168` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379498 | `0x8f59c7a53b883563b34cbbb6ff021b03973e823a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f6406781cc955398c45a48dcefeebdb2c8e2caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90b02d9f861017844f30dfbdf725b6aa84e63822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x90d68b056c411015eae3ec0b98ad94e2c91419f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x917e701b4f4ff29dd5e0e1585e88d59147069d29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93b1a8c9f084fbe7972baea73535bed3d32748c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x950d054ba5fd67c7902d0e4125095ac6e7b06a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x958985cf2c54f99ba4a599221a8090c1f9cee9a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9625ee87a85cf1d5ee31f0883df27a5c8770312e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x964177232be7c9e530054b3274b8b9d332b24df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99761fac22fce23498f8004ac4025f822fedce95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99a2a31300816c1fa3f40818ac9280fe7271f878` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ad8b2564445f3cde1897aa0ad406cfab7f5d2c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ae2cae3db7b10f9962026633120e50bb26d6077` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bb78f4d5fd55c576ffe2aa9b71f1e441163adb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9c84a387930853d963892d299153b0d5840dc1f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cad81628ab7d8e239f1a5b497313341578c5f71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d924ffe6d66ca0727657734a615cc9730925c49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ea06b8753bca071a5c57002ab84598577fb08c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f5f2da42be9833654c1d702e2e8cfffc7a0a6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9fd20d42cf52b1a0def8e95ad8d2e92b58eca51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa0d6e6b1b950acc748b45f3419fead4b52f7389a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2bc63c7a53f8588a5224db873998217082faf7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa40a8987d58d693b99bf8a2cf699f95fd886db50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6d1ce7210353e431ce79f41bcfa9ea3ae507b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7fc2f965ffed9b12137a7d59066eee15755fe35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8531c989b2f8531e123f1daf2edae83bf4aa190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadd9602e9810ed220a5316e2fa45d5ab12591c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf58472d08d7dbccc73d5f58d26b2bd9ef43a5c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf86a539bd69dcf9d1bf7560a8a7930e73099d18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb040b105a4a0c7a9cc290164accbc32855368322` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb08ca18499389abfdf7b14b09bd2bd4d56d7fbbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb143feae3d2a522c2f03c95d39fe9b0174c77c72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb20107bfb36d3b5aca534acafbd8857b10b402a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb23214f241bdeb275f7dcbfbb1ea79349101d4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb28c89b6997f025bd35205b99a7968c264cce353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb642058a41d414d9de3f36d14051623e557f1052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb7cebd39c39f263293edb7896d5d9a1720fead4b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379513 | `0xb90e53fd945cd28ec4728cbfb566981dd571eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba8b7fb486eb8698c980194e934404c2ae07806c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd33dc46dfc6af9637137c59b97ba93b3799994a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd4dc8c28c1d5d579fabfc9cb21b5734d568b6dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe95d0ee267f3e90606537b1c8a6fb36d2dc1ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbed55eb1a34ba94c1152369cc71571815eba509e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc08a4543b011fd4f1efc9e26521f4e157433b3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3d915129b03895d904fbf067d03f3d23a57c535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4ee800ec42ecc1206c54eec13955dd2506f0f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc555b2f1d559fbb854569b33640990d178f94747` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc65c22564a8c90a0e51c67b55a5e4fbb4261a6a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379521 | `0xc840838bc438d73c16c2f8b22d2ce3669963cd48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8c95b8b35772ce4bf9e602336082696c2dc0db8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9f70e309c659af9f947ac235e9132d6d40a5cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca4f67ccda20221b627edcf2aa1952433bbb5937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf66f830c4e5e1904b599ed61249601901e55d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd106ec93d2c1adaa65c4b17ffc7bb166ce30ddae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd35dccd471cb5136004da35660e0573b6cd791d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd3de403eaddf791104918e9c9336b434ae7dda01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379527 | `0xd570ace65c43af47101fc6250fd6fc63d1c22a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5fddac0bc78c5d7fd1fc0f66b05d697029d9946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd86d418d881fd718fa197e399bf74cdd61dd3acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd89d54007079071cba859127318b9f34eeb78049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8a9d0a84e4ca6aea88b79ee0b4c7db5ad7e82fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9e17c6012a50f8725acda0196cecaa40657e8cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdbe3e840569a0446cdfebc65d7d429c5da5537b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd1299069f6aed87371862386835cba6a137e83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd262dfdf2fce29696f54ec5bb82c6994ec2f639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd91f6e88576fec4a38a518da39c92e13cbb6446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdeacdfbd55a3628ce2cf402860f41cd7ac0556bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf0eacc3f37356df320e5b5db16c7ed7a6b596dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf94f0474f205d086dbc2e66d69a856fcf520622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdfcc5a8acda6d68c24487f99fef21f9ac36988d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe10a2c03501f073952c5e7d3476b16efe8f2a03c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe51e82ddb45da069e5c22bb0926856e35e196cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe58a2deb5718f9aaf2c1ddd0e366ed076d204cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe60081476e505f14c231a7efa47e607ff50daeb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6f640e138c10c35306faf9d68efb4e003300232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe80eb0238029333e368e0bddb7acdf1b9cb28278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8709022b9c9d7347856c75910fe07e10c904446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebb11bbd7d72165fac86bb5ab1b07a602540b286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebc8470d53865a7cf4b3eba5548bfa29d095559c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xecf65049cc8c1fcd66a6fa7302f4826971fc52fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee9e5546a11cb5b4a86e92da05f2ef75c26e4754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xef52d1f5a41890ba460d145e39745df612069df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf02e431607a3e0fa8d65c4fd9dd348109a965e52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0afb013feb9e51cdedb02d17ac96180d6d5c55f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf16dc087a88825d62319469c796b441d67a08933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1d831aa5b0b3032cf2c58cdf7bd58f598202320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf39a8a43cffa0513cc057d290fa3e7a57dcd8d46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf40c24ba346aa459ed28e196d4a46cf17174bd6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf48cbc0e2bd8d9ed8d76a54a3672bbb6e07cf6d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4d69939895e5f1d1ddca96e5f93a878c80368c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4d7a9f07fb5a910aadfdba555269b4a486e2dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5f5bc097ca8f4be96d8cde86c96bd2d81fd2585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf6dddf2c0c61571d2bd6f76f696287638ff012b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf8e5e5562c2c12d8690786f5c9fa65f20f6bd881` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379535 | `0xf916bfe431b7a7aae083273f5b862e00a15d60f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf93353c1fe24225b6c82b284b2b6dbb924690515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9725312bd91ccfa3ad797e78a8a10b6d692fcd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf9fbfc857d51ff51fedd4ea88efc29039871dccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfad0d420fff503a40e9cdcb90ff0328e46f06c08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd2df65294ef9a2611091ff119cc703c13f1d39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfeb2537afd8519d16d0ccea741a70f97f3d4288b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 411
- Live contracts: 0
- Unknown liveness contracts: 411
- Source-verified contracts: 160
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=114, source verified unclassified=46, unverified unclassified=251

Showing first 200 of 411 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x01b370d9b1ed1591c64c9a4b0faff193af5fa928` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x08aa1648fc9d862a28aad015eeaa1ee2c2483838` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x12a132e2341ae7d24cf77ada0b5503e11a15a447` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13e7746ece329d4290b56692b968f7f0913c8942` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1e03aa1e483fce52643a801d840a22f5eee709ba` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x435e77c59db2b9036ac6be684b77d1667699437c` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x43c2668d46c82911d977ffcab8c1a13cb03a2add` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x621f7268e0c981af0c1062cbd56a0e05b35bbed0` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x676d824b9c9e79c3da2b76600db942fb8f901db5` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6e031b6e9f667ed6953e627276fbbefa4c28529a` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8e91b13eb6234083894b66a3cb6a61acece74397` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9625ee87a85cf1d5ee31f0883df27a5c8770312e` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdfcc5a8acda6d68c24487f99fef21f9ac36988d8` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf93353c1fe24225b6c82b284b2b6dbb924690515` | non_address_book | unknown | unknown | unverified | n/a | `0x083d2ac7c551ce64d580c46ae57ceefae6f4b567` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x06ea6ad1037d251a23c7534171331313421b8358` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09824fe72bff474d16d9c2774432e381bbd60662` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ae4dd666748bf0f6db5c149eab1d8ad27820a6a` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1135265fe014d3fa32b3507e325642b92affeaeb` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13be515e44eefaf3ebefad684f1fbb574ac0a494` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17a8d893d2ba9e31dfff9b46ae11fa3dded5115c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x17e7f68ce50a77e55c7834ddf31aef86403b8010` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x18ed2d5bf7c5943bfd20a2995b9879e30c9e8dda` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x18fd37a4fb9e1f06d9383958afd236771f15a8cb` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x19431dc37098877486532250fb3158140717c00c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1c6accd9d66f3b993928e7439c9a2d67b94a445f` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d720642e63cb0f50be637e16e0f78b2d1b93f16` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d901dd7a5efe421c3c437b147040e5af22e6a43` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x211a5579d21e1938b2b5ff87a3f7896933543e97` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x230b6fec9107a0b0476477a66c4d621f9a0d1746` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x23d1171380e3cbaa161f6eb31e3a3c6b548a467a` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x26f26dc12bb3eb302317675129a7d16f11a8367c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a6dd4433ffa96dc1755814fc0d9cc83a5f68dec` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b0e04dc90e3fa58165cb41e2834b44a56e766af` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2e0c12e2478a0dec2ef6c2ccc2ed8d4fed3597d1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2fb33d8e4a8e989e7814d914973096736ed718b5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x302275067251f5fcdb9359bda735fd8f7a4a54c0` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31faaab44e74eb408d1fc69a14806b4b9ca09da2` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x408e208e8f7dcde6804f4e31f90e3272ee04502d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x413aa082995f0d7672c4d564624ddebd221c8d0d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44624a5eda4acdf8e9c262b0bf600c031686f5ae` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x45fcb351851071c7107ca158f2bd3cd4510dec2d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4811500e0d376fa8d2ea3ccb7c61e0afb4f5a7f1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4998b99dd376a0cfff0e4b7f1ee0056f79910e64` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ab216d2bbecaa7517a1615505c8f7078ef1c123` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4c240987d6fe4fa8c7a0004986e3db563150ca55` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ca8c773aff136fe9448946b6ebc25ad7673451d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x526a6e634ad36bb0007c4422586c135f1f9b525a` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x52d5181dd67ac17176127e670e5baee4d47c6c9e` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ca988f213efbcb86ed7e2aacb0c15c91e648f8d` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x606bb75b1f910f82086557aa14ed2dc0beb85d6b` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x609aa0dbb59606a9f51133c4f5f2a83d88267d73` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x60d9a46f24d5a35b95a78dd3e793e55d94ee0660` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x660ea1675f7323dc3ba0c8ddfb593225eb01e3c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b9a2769b259f36fbd503fec0bbf4408459a3876` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6c21303f5986180b1394d2c89f3e883890e2867b` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7259f157f9d7e2a401e4fabc9f44ad1519d16f25` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7785047a920b43d23d181c6e68fa9405c874997c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a299ad29499736994aa3a9afa3f476445faeb2c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7deda2425ec2d4ea0df689a78de2fbf002075576` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7efcb76d0e2e776a298aaa603d433336e5f8b6ab` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f7c304843e6b933c01a0462cad0acc2fbb865e7` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x800da62be6626127f71b34e795286c34c04d6712` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x841a23c7c4e20515eaf03debd8ab60f12b5cc13e` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x850f050c65b34966895ada26a4d06923901916db` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x89af7c4c2198c426cfe6e86de0680a0850503e06` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8b73ef238adab31ebc7c05423d243c345241a22f` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f6406781cc955398c45a48dcefeebdb2c8e2caa` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x90b02d9f861017844f30dfbdf725b6aa84e63822` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x90d68b056c411015eae3ec0b98ad94e2c91419f1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x917e701b4f4ff29dd5e0e1585e88d59147069d29` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x958985cf2c54f99ba4a599221a8090c1f9cee9a5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x99a2a31300816c1fa3f40818ac9280fe7271f878` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ad8b2564445f3cde1897aa0ad406cfab7f5d2c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9c84a387930853d963892d299153b0d5840dc1f5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9cad81628ab7d8e239f1a5b497313341578c5f71` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ea06b8753bca071a5c57002ab84598577fb08c1` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa8531c989b2f8531e123f1daf2edae83bf4aa190` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb20107bfb36d3b5aca534acafbd8857b10b402a8` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb23214f241bdeb275f7dcbfbb1ea79349101d4b0` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb28c89b6997f025bd35205b99a7968c264cce353` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb7cebd39c39f263293edb7896d5d9a1720fead4b` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbd4dc8c28c1d5d579fabfc9cb21b5734d568b6dc` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbe95d0ee267f3e90606537b1c8a6fb36d2dc1ce6` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbed55eb1a34ba94c1152369cc71571815eba509e` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc555b2f1d559fbb854569b33640990d178f94747` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc65c22564a8c90a0e51c67b55a5e4fbb4261a6a3` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xca4f67ccda20221b627edcf2aa1952433bbb5937` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd106ec93d2c1adaa65c4b17ffc7bb166ce30ddae` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdd1299069f6aed87371862386835cba6a137e83c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdeacdfbd55a3628ce2cf402860f41cd7ac0556bd` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xdf94f0474f205d086dbc2e66d69a856fcf520622` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe10a2c03501f073952c5e7d3476b16efe8f2a03c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe60081476e505f14c231a7efa47e607ff50daeb5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe8709022b9c9d7347856c75910fe07e10c904446` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xee9e5546a11cb5b4a86e92da05f2ef75c26e4754` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xef52d1f5a41890ba460d145e39745df612069df5` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf0afb013feb9e51cdedb02d17ac96180d6d5c55f` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf39a8a43cffa0513cc057d290fa3e7a57dcd8d46` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf40c24ba346aa459ed28e196d4a46cf17174bd6c` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf9fbfc857d51ff51fedd4ea88efc29039871dccf` | non_address_book | unknown | unknown | unverified | n/a | `0x7a9d9daddd745897c06e8664e1dc2702b6e6f341` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x026d77f3d0f5dd4c095fecbc802cf99290a883fc` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x079840cc8959ef60d414e5afc6ed0493b8eaf514` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x08b1395a2ee51073d6b9ebf9e97fbeb09dcacaf1` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09fd6132aaf7cadb02bebc375ad82eaeb2631aae` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x09fda6447fa7758ea9245ac78ca3c9ba68cbfd3d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0f728dd0217e26120a304b3fa554c3ba2b2af535` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x12b1389fbf261e781bdc3094d28636abfb03c5b3` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1499ebe4b56a37e0068a2b3265bb54c4fe8d896f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x165bd50aa051637bd659e1eada63c954b48cde17` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x18cc27b3a95a6fdef9eaa391eff28f48f42ffe3f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1aa699687b6add34ce80885b732e75885d89af43` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1bed37fedfe8b2721a69a559313d2b58d16ecd77` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1d7b00c67e933ffca847a24381960ff8e91de197` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1dcf7d03574fbc7c205f41f2e116ee094a652e93` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1dfa102bc097446bb2b836082367991de24a1c64` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ed80b2542758ed63dd9ea539ee87aefd4274d01` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ef281cd6bd48affd9c44cb590858fcff92de821` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x234e937f1a2926737b0084fb7498772579497735` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x23a87a6b30d5e75f069fea7964c870a7630ebdf2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x26368445c0e5ae17838d626347a000fbacc84553` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x26a1be24dde0571da03022493be9fd013ca62dc5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ab445728a7db4fb767457383ca23396a4b5611a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2d592c021e9216f68035c5f86128df0a3e9bd6c8` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31127a9c0308d8e3f6db5158a14ad674f22946d7` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31c8dc074d8a31cdd33925405719931457ed61f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x33c1514bf90e202d242c299b37c60f908aa206d4` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3525f734fce1a26a6cefffca43538290dc239771` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x35751b4c43461902dc98a03e1bd711fd2b816dab` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3930ad9a21da38e63d52b43b0c530cb0aaccb389` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3de02cf69192f4805ede47d7fa5efa614c5a6593` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3e9a459089758e760bea267abb9485ee5b47a909` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x42b5929fdc3503e4cb31a72f247f081843afea3a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x466aa18ce75f1a3039d4c06a3c31786d0d0386c8` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x474b3de6d993bad662e68ef2aea050bb67847a77` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x48b9379913888fb7f4a58a2b584a7ca1ec4fe5bc` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x49c9e7c42cb6fb4f133e4648871d12936b05f3bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4a5b394be885de0dca45aaf7fa7152457f82ebc9` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ca08847418de7860a6da0de2e5536f1cd78458a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f681ebb93dc2a820685ea74d881e2a4d044681e` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x51882b52bcc3ef8008f9f7772b0229ea2551fddc` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x51dedbd2f190e0696afbee5e60bfde96d86464ec` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x54e0923782b701044444de5d8c3a45ac890b0881` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x55b64943f7518ab3185a645c6c6fc175f6443ec6` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x56411606380fd9ef28db1aac3897bd4a24f26606` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x583f8ba007580c83efb4b02c66694096cd5c56d1` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5aa806015fec88669bf7dad746bb4adc1e79bced` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5c4d02b13378d0db345c62b3cc9811d6f9c6baf7` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f49069667541fc85f48514aca6c10c7e33cd9a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5f89646f93e360217ad7cad73a44298abc4aca9a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5fafdbc0c1b87c39c101c53666bf7cbd7eae3e35` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5fcb496a31b7ae91e7c9078ec662bd7a55cd3079` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x61006c8566fac9a3315f646da4624c00bbcf15e4` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6284bd731aea4ee3c576d095960b8689bd7c9eca` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6448c74ff1c94df19a24545f0b9ea67f847f3ebf` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x64a0ddf7469d52828a026b98a76f194637daad2c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69a6de0b9bec9edb33805167327a6abef0c69fd2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6c7508874c4db742fbf2f3b293621d94062ecfe3` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6db2bf00c397024516683ff3613b771f30543e4d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x731e8e1fcde329475643d6eb8653e224be10f213` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x74a5c491e9ed0263ba218aba13694d4d0e5fccc7` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x760c1b5fe95b2c66d67662ec544975bdbb129645` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x76600101e42dd9355d29741288407923268c06ed` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x782bc330ea15c57fc0e3d4959c2f8a38278703e8` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x78b101ec9736c4ab06b0833f01fd4c011f7ca612` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x79607f00e61e6d7c0e6330bd7e9c4ac320d50fc9` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x796822909dcefdc433da071c7f75001452310a67` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7cf7e521b9259676c069599cd4de3d20104e06de` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7d42f098e79de006cfab475cfd50bdf2310d7ae8` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7ecfbaa8742fdf5756dac92fbc8b90a19b8815bf` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7ed9c3a779be8b742abfc17a2f15353ecbce3e00` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7ef5b5a0aaf44fca9e6a678e2b0464a7e074327f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f6dbaed9905c3b01030d3ad5aa93846ecbbfa44` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81f6f682ca9bb29d759ce12d7067e1c6ef533096` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x841a6e8230ca0f563a841eb6bf8dfe129672bdc5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8457c9fb027f3125e82caceb596d07f90c4ebe3c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x862d1993aee44fe8fd6e13074be7712edfac4b9c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86c239f206a0878fb07243abb4afa932e6ace911` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86cfdebdff5387137f4dc425835c281bbf9ff452` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86e93e21ad108cae7ade482c34c230bfd94d4a8b` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8838b7f8bafc208c4b2255bc0321527166654c95` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x893af2923a6ad9a784f1a72dc6af7f4a34266814` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8da371823a4937e5f371b7b53876ee34d5d5e520` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f2cdfd7c96a7026c617e66ebca389c5d4e3b168` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x93b1a8c9f084fbe7972baea73535bed3d32748c6` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x950d054ba5fd67c7902d0e4125095ac6e7b06a72` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x964177232be7c9e530054b3274b8b9d332b24df5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x99761fac22fce23498f8004ac4025f822fedce95` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ae2cae3db7b10f9962026633120e50bb26d6077` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9bb78f4d5fd55c576ffe2aa9b71f1e441163adb9` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d924ffe6d66ca0727657734a615cc9730925c49` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9f5f2da42be9833654c1d702e2e8cfffc7a0a6a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9fd20d42cf52b1a0def8e95ad8d2e92b58eca51b` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa0d6e6b1b950acc748b45f3419fead4b52f7389a` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa2bc63c7a53f8588a5224db873998217082faf7c` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa40a8987d58d693b99bf8a2cf699f95fd886db50` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa6d1ce7210353e431ce79f41bcfa9ea3ae507b98` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa7fc2f965ffed9b12137a7d59066eee15755fe35` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xadd9602e9810ed220a5316e2fa45d5ab12591c88` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf58472d08d7dbccc73d5f58d26b2bd9ef43a5c2` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaf86a539bd69dcf9d1bf7560a8a7930e73099d18` | non_address_book | unknown | unknown | unverified | n/a | `0xa4b1cd457e5635b64ebc8c5be3a1ca7543f7984d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Manual audit seed](https://docs.arbitrum.io/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_05_06_trail_of_bits_arbos_40_nitro_summary_report-769a942c08fe0f917eef523cba81a459.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_03_11_trail_of_bits_sequencer_liveness_security_review-298b2cd6810968ed840dff94df1e0c0e.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_security_council_rotation_security_review-6feca69ad7afe171104ecabaefe8971a.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_disable_gateway_action_security_review-11ed2e1370d062c2ade5e5d6b085a8f3.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_custom_fee_token_exchange_rate_security_review-640d7ef454d21c739e50c594fac727d9.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_geth_14_4_security_review-f24eef2e97e06e030fd5c1cc3a54ce5d.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [view](https://docs.arbitrum.io/assets/files/2025_02_02_trail_of_bits_custom_fee_erc20_bridge_security_review-ccd6d481c1f7d41436a3ceb474bcd0f3.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_12_26_trail_of_bits_bold_fixes_security_review-95c9ee3b07ccb11e59e57744ddc017d2.pdf) | Trail of Bits | Audit | 2024-12 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_30_trail_of_bits_security_audit_nitro_contracts_with_bold-90984d87c800f448601b84972e544e1d.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_23_trail_of_bits_security_audit_arbos32_emergency_fixes-d3e018abb506e80f9625508dbaab2358.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_07_trail_of_bits_security_audit_bold_optimized_history_commitments-025bd74c8af33bb436e606b55a3ef550.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_09_25_trail_of_bits_security_audit_timeboost_auction_contracts-2a8dbdf7b139db4224d30d6d1015aa85.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_09_05_open_zeppelin_security_audit_stylus_rust_sdk-a78b94ded01f4e5f96dfd55a47158680.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_orbit_and_governance_upgrade_actions_v2_1-8d6150a317148e1bfcf428b4e2c8ef2d.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_usdc_custom_gateway_and_arbos_upgrade_at_timestamp_action-f490e6aa741551bfbf4b2349fcc82579.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_05_trail_of_bits_security_audit_bold_and_dac_rewards_updates-d0d6028126d4539be649eb05db5380c4.pdf) | Code4rena | Contest | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_01_trail_of_bits_security_audit_custom_fee_token-7ce514634632f4735a710c81b55f2d27.pdf) | Trail of Bits | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos_31-4538d946ebcd4187b211a868b6e8ea08.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos30_nitro_upgrade-d3b44d44e482a44a1710c80014a6630a.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [view](https://docs.arbitrum.io/assets/files/2024_06_17_code4rena_security_audit_arbos30_nitro_upgrade-3663f40614e5dadebbf4ef0e6a8e5c1e.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | medium |
| [view](https://docs.arbitrum.io/assets/files/2024_05_02_trail_of_bits_security_audit_bold_delay_buffer-7329f073827e7e12aede9a9203db1e01.pdf) | Trail of Bits | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_20_chainsecurity_security_audit_nova_fee_router_update_arbos_31-12a4328ecb6f0966acacb54da8f49698.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_03_18_trail_of_bits_security_audit_l1_l3_teleporter-76736686c28613a9473c149615f94765.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [view](https://docs.arbitrum.io/assets/files/2023_08_02_trail_of_bits_security_audit_challenge_protocol_v2-b63429218c10faec79c4834f8582f9d3.pdf) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [view](https://docs.arbitrum.io/assets/files/2023_06_23_trail_of_bits_security_audit_governance_report_governance_token_bridge-ca76b55fb6c017c17ef78d0721f7e714.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [view](https://docs.arbitrum.io/assets/files/2022_10_22_trail_of_bits_security_audit_nitro_2_of_2-11d8ca6bdf6e154c9b62e401b3220b1e.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_06_24_consensys_diligence_security_audit_nitro_contracts-b89f0db3702d3eec15a9211233ace9a6.pdf) | Consensys Diligence | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 35 | high |
| [view](https://docs.arbitrum.io/assets/files/2022_03_14_trail_of_bits_security_audit_nitro_1_of_2-d777111730bd602222978f7d98713d40.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [view](https://docs.arbitrum.io/assets/files/2021_11_05_consensys_diligence_security_audit_core_contracts_token_bridge-664fbe3e5a14a41acaee4af64ae06100.pdf) | Consensys Diligence | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 61 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24048] Manual audit seed — no match: The provided text is a table of audit reports with links, not the full audit report content. No specific contract names or scope details are present.
- [24049] view — no match: The audit report does not contain a scope section listing specific smart contracts. The targets are repositories (Nitro, go-ethereum) and PRs, not individual contracts. No contract names are explicitly mentioned as in scope.
- [24051] view — no match: The report is a security assessment of the Arbitrum Sequencer, focusing on Go source code (tx_options.go, tx_pre_checker.go) rather than smart contracts. No smart contracts were in scope.
- [24052] view — no match: Only SecurityCouncilManager.sol is explicitly mentioned as the target in the finding. The report states 'Only the production smart contract changes were in scope' but does not list all files; the finding references SecurityCouncilManager.sol.
- [24053] view — no match: The report does not list specific contract names in scope; it only references a governance action and a PR with a commit hash. No contract names are explicitly mentioned.
- [24054] view — no match: The report does not list specific contract names or file paths in scope; it only mentions 'Nitro contracts' and 'changes made to the Nitro contracts' without naming individual contracts.
- [24055] view — no match: The audit report does not contain any smart contracts; it reviews changes to go-ethereum (Geth) and ArbOS, which are not smart contracts.
- [24056] view — no match: Scope explicitly mentions ERC20Bridge, NitroContracts2Point1Point3UpgradeAction, and EIP-7702 fixes. Additional contracts referenced in findings.
- [24057] view — no match: Extracted contracts from findings targets and project targets section. Audit date from cover page.
- [24058] view — no match: The report scope is the Nitro Contracts repository with BoLD changes. The specific contracts mentioned in findings are Inbox, ERC20Inbox, and AbsInbox. The audit date is October 30, 2024 from the cover page.
- [24059] view — no match: Contracts in scope are governance and emergency action contracts mentioned in Executive Summary. No Solidity file paths provided.
- [24060] view — no match: Audit report for BoLD optimized history commitments. Scope includes Go code in repository https://github.com/OffchainLabs/bold, versions PR#681 and PR#691. Main file identified: history_commitment.go. Contract names extracted from code references.
- [24061] view — no match: Extracted contracts from Project Targets and findings. Audit date from cover page and timeline.
- [24062] view — no match: The audit report lists the scope as the entire stylus-sdk-rs repository at a specific commit, with detailed file listings for stylus-proc, stylus-sdk, examples (erc20, erc721, single_call), and mini-alloc. These are the contracts/modules in scope.
- [24063] view — no match: Extracted from Project Targets section and detailed findings. Only two contracts explicitly named in scope.
- [24064] view — no match: Extracted contract names from findings targets and code snippets. Audit date from cover page.
- [24065] view — no match: Extracted contract names from Project Targets, Project Coverage, Detailed Findings, and Appendix B. Audit date from cover page and delivery date.
- [24066] view — no match: Extracted 3 contracts from the 'Project Targets' section and detailed findings. The audit date is from the cover page.
- [24067] view — no match: Scope defined by PRs, not explicit contract list. Only two Solidity contracts named in findings.
- [24068] view — no match: The report lists many Go files in scope but only one Solidity contract (CacheManager) is explicitly named as a target. The Go files are not smart contracts but part of the Nitro node software.
- [24069] view — no match: The report does not have a dedicated scope section; contract names were extracted from findings and file paths mentioned throughout the report. The audit date is taken from the report title 'Arbitrum BoLD Findings & Analysis Report 2024-06-17'.
- [24071] view — no match: Extracted contract names from scope table and findings targets. Audit date from cover page.
- [24072] view — no match: Scope section explicitly lists three contracts under src/FeeRouter/ directory. Audit date is March 20, 2024 from the cover page.
- [24073] view — no match: Extracted from project targets and detailed findings. The report covers L1Teleporter, L2Forwarder, and IL1Teleporter interfaces.
- [24074] view — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page and delivery date.
- [24075] view — no match: Extracted contract names from Project Targets and Project Coverage sections. Audit date from cover page: January 6, 2023.
- [24076] view — no match: Extracted contracts from Project Targets and Project Coverage sections. Audit date from cover page.
- [24077] view — no match: Scope section explicitly lists folders: bridge, challenge, osp, state, rollup, libraries. Contracts extracted from file paths and descriptions.
- [24078] view — no match: Extracted contract names from Project Targets and Project Coverage sections, plus contracts mentioned in findings. Audit date from cover page.
- [24079] view — no match: Extracted contracts from scope section and file paths in the audit report. Date is November 2021, approximated to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| view | SecurityCouncilManager | unmatched — not counted | — | Target in finding TOB-SC-ROT-1 | no |
| view | ERC20Bridge | unmatched — not counted | — | mentioned as patched version in scope description | no |
| view | NitroContracts2Point1Point3UpgradeAction | unmatched — not counted | — | target of finding TOB-ARBFIX-1 | no |
| view | Inbox | unmatched — not counted | — | referenced in finding code snippet | no |
| view | ProxyAdmin | unmatched — not counted | — | used in upgrade function | no |
| view | TransparentUpgradeableProxy | unmatched — not counted | — | used in upgrade function | no |
| view | IInbox | unmatched — not counted | — | interface used in perform function | no |
| view | IERC20Bridge | unmatched — not counted | — | interface used in perform function | no |
| view | IERC20Bridge_v2 | unmatched — not counted | — | interface used in perform function | no |
| view | ExpressLaneAuction | unmatched — not counted | — | Target in findings 1 and 2 | no |
| view | SetValidatorsAction | unmatched — not counted | — | Target in finding 3, described as a smart contract with perform function | no |
| view | Inbox | unmatched — not counted | — | Target in findings 1 and 2 | no |
| view | ERC20Inbox | unmatched — not counted | — | Mentioned in finding 1 as having depositERC20 function | no |
| view | AbsInbox | unmatched — not counted | — | Mentioned in finding 1 as having _createRetryableTicket function | no |
| view | L1ModuleRootArbOneAction | unmatched — not counted | — | listed in Executive Summary as governance action | no |
| view | L1ModuleRootNovaAction | unmatched — not counted | — | listed in Executive Summary as governance action | no |
| view | L2ArbOS32Action | unmatched — not counted | — | listed in Executive Summary as governance action | no |
| view | SetInkPriceOneAction | unmatched — not counted | — | listed in Executive Summary as emergency action | no |
| view | SetWasmMaxStackDepthZeroAction | unmatched — not counted | — | listed in Executive Summary as emergency action | no |
| view | HistoryCommitter | unmatched — not counted | — | Target in scope, mentioned in findings and code quality recommendations | no |
| view | Commitment | unmatched — not counted | — | Mentioned in code quality recommendations as optimized implementation | no |
| view | History | unmatched — not counted | — | Mentioned in code quality recommendations as unoptimized implementation | no |
| view | ExpressLaneAuction | unmatched — not counted | — | listed in scope and findings | no |
| view | Balance | unmatched — not counted | — | listed in findings | no |
| view | IExpressLaneAuction | unmatched — not counted | — | referenced in findings | no |
| view | Burner | unmatched — not counted | — | mentioned in fix for TOB-ELA-3 | no |
| view | stylus-proc | unmatched — not counted | — | listed in scope | no |
| view | stylus-sdk | unmatched — not counted | — | listed in scope | no |
| view | mini-alloc | unmatched — not counted | — | listed in scope | no |
| view | erc20 | unmatched — not counted | — | listed in scope | no |
| view | erc721 | unmatched — not counted | — | listed in scope | no |
| view | single_call | unmatched — not counted | — | listed in scope | no |
| view | EnableFastConfirmAction | unmatched — not counted | — | Target in findings TOB-ORBUPG-001 and TOB-ORBUPG-002 | no |
| view | UpgradeAndEnableFastConfirmAction | unmatched — not counted | — | Mentioned in finding TOB-ORBUPG-001 description | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | mentioned in finding 2 target | no |
| view | L2USDCGateway | unmatched — not counted | — | mentioned in finding 2 target | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | mentioned in finding 2 code snippets | no |
| view | ArbChildToParentRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | OpChildToParentRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | ParentToChildRewardRouter | unmatched — not counted | — | listed in Detailed Findings section 1 | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in Project Coverage and Appendix B | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | listed in Project Coverage and Appendix B | no |
| view | AssertionStakingPool | unmatched — not counted | — | listed in Appendix B | no |
| view | EdgeStakingPool | unmatched — not counted | — | listed in Appendix B | no |
| view | RollupCore | unmatched — not counted | — | listed in Appendix B | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in Appendix B | no |
| view | RollupAdminLogic | unmatched — not counted | — | listed in Appendix B | no |
| view | ChallengeEdgeLib | unmatched — not counted | — | listed in Appendix B | no |
| view | Rollup | unmatched — not counted | — | listed in Appendix B | no |
| view | ERC20Bridge | unmatched — not counted | — | Target in finding 1 | no |
| view | L1OrbitERC20Gateway | unmatched — not counted | — | Target in finding 2 | no |
| view | L1AtomicTokenBridgeCreator | unmatched — not counted | — | Target in finding 3 | no |
| view | RollupUserLogic | unmatched — not counted | — | Target in finding TOB-STY-2 | no |
| view | RollupAdminLogic | unmatched — not counted | — | Target in finding TOB-STY-2 | no |
| view | CacheManager | unmatched — not counted | — | mentioned in finding TOB-ARBOS30-5 target | no |
| view | DelayBuffer | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | SequencerInbox | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | Bridge | unmatched — not counted | — | mentioned in M-01 finding | no |
| view | BOLDUpgradeAction | unmatched — not counted | — | mentioned in M-02 finding | no |
| view | RollupUserLogic | unmatched — not counted | — | mentioned in H-02 and L-08 findings | no |
| view | RollupAdminLogic | unmatched — not counted | — | mentioned in L-03 and L-06 findings | no |
| view | RollupCore | unmatched — not counted | — | mentioned in L-09 finding | no |
| view | EdgeChallengeManager | unmatched — not counted | — | mentioned in L-04 finding | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | mentioned in H-02, L-01, L-02, L-05 findings | no |
| view | ArrayUtilsLib | unmatched — not counted | — | mentioned in L-07 finding | no |
| view | IOldRollupAdmin | unmatched — not counted | — | mentioned in M-02 finding | no |
| view | IOldRollup | unmatched — not counted | — | mentioned in M-02 finding | no |
| view | IOutbox | unmatched — not counted | — | mentioned in L-03 finding | no |
| view | AssertionStakingPool | unmatched — not counted | — | listed in scope and findings | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in scope and findings | no |
| view | BOLDUpgradeAction | unmatched — not counted | — | listed in findings | no |
| view | Error | unmatched — not counted | — | listed in findings | no |
| view | DelayBuffer | unmatched — not counted | — | listed in findings (library) | no |
| view | ChildToParentRewardRouter | unmatched — not counted | — | listed in scope table | no |
| view | DistributionInterval | unmatched — not counted | — | listed in scope table | no |
| view | ParentToChildRewardRouter | unmatched — not counted | — | listed in scope table | no |
| view | L1Teleporter | unmatched — not counted | — | listed in scope and findings | no |
| view | L2Forwarder | unmatched — not counted | — | listed in findings | no |
| view | IL1Teleporter | unmatched — not counted | — | listed in findings | no |
| view | EdgeChallengeManagerLib | unmatched — not counted | — | listed in scope | no |
| view | ChallengeEdgeLib | unmatched — not counted | — | listed in scope | no |
| view | MerkleTreeLib | unmatched — not counted | — | listed in scope | no |
| view | EdgeChallengeManager | unmatched — not counted | — | listed in scope | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupCore | unmatched — not counted | — | listed in scope | no |
| view | prefix_proofs | unmatched — not counted | — | listed in scope | no |
| view | inclusion_proofs | unmatched — not counted | — | listed in scope | no |
| view | commitments | unmatched — not counted | — | listed in scope | no |
| view | edge_tracker | unmatched — not counted | — | listed in scope | no |
| view | edge_tracker_transition_table | unmatched — not counted | — | listed in scope | no |
| view | tree | unmatched — not counted | — | listed in scope | no |
| view | ancestors | unmatched — not counted | — | listed in scope | no |
| view | path_timer | unmatched — not counted | — | listed in scope | no |
| view | watcher | unmatched — not counted | — | listed in scope | no |
| view | assertion_chain | unmatched — not counted | — | listed in scope | no |
| view | L1ArbitrumToken | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | TokenDistributor | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | FixedDelegateErc20Wallet | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | L1ArbitrumTimelock | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | L2ArbitrumGovernor | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | ArbitrumVestingWallet | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | UpgradeExecutor | unmatched — not counted | — | listed in Project Coverage: Governance contracts | no |
| view | L1ArbitrumMessenger | unmatched — not counted | — | listed in Project Coverage: Auxiliary code | no |
| view | Util | unmatched — not counted | — | listed in Project Coverage: Auxiliary code | no |
| view | ArbitrumTimelock | unmatched — not counted | — | listed in Project Targets: Arbitrum Governance Repository | no |
| view | L2GovernanceFactory | unmatched — not counted | — | listed in Project Targets: Arbitrum Governance Repository | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L1ReverseCustomGateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L2CustomGateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L1ERC20Gateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L1CustomGateway | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | L1GatewayRouter | unmatched — not counted | — | listed in Project Coverage: Token Bridge contracts | no |
| view | StandardArbERC20 | unmatched — not counted | — | mentioned in finding 15 | no |
| view | L1ReverseToken | unmatched — not counted | — | mentioned in finding 13 | no |
| view | IArbToken | unmatched — not counted | — | mentioned in finding 13 | no |
| view | Inbox | unmatched — not counted | — | listed in Project Coverage section | no |
| view | SequencerInbox | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-12 | no |
| view | Bridge | unmatched — not counted | — | listed in Project Coverage section | no |
| view | HashProofHelper | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-9 | no |
| view | NitroMigrator | unmatched — not counted | — | listed in Project Coverage section and finding TOB-ArbOS-9 | no |
| view | ArbOS | unmatched — not counted | — | listed in Project Targets and Project Coverage sections | no |
| view | RollupAdmin | unmatched — not counted | — | mentioned in finding TOB-ArbOS-14 | no |
| view | Sequencer | unmatched — not counted | — | mentioned in code quality recommendations | no |
| view | Bridge | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in scope | no |
| view | Outbox | unmatched — not counted | — | listed in scope | no |
| view | SequencerInbox | unmatched — not counted | — | listed in scope | no |
| view | ChallengeManager | unmatched — not counted | — | listed in scope | no |
| view | BridgeCreator | unmatched — not counted | — | listed in scope | no |
| view | ValidatorUtils | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWalletCreator | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWallet | unmatched — not counted | — | listed in scope | no |
| view | RollupCreator | unmatched — not counted | — | listed in scope | no |
| view | ArbitrumProxy | unmatched — not counted | — | listed in scope | no |
| view | AdminFallbackProxy | unmatched — not counted | — | listed in scope | no |
| view | RollupAdminLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupCore | unmatched — not counted | — | listed in scope | no |
| view | AbsRollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | ERC20RollupUserLogic | unmatched — not counted | — | listed in scope | no |
| view | RollupEventBridge | unmatched — not counted | — | listed in scope | no |
| view | SecondaryLogicUUPSUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | DoubleLogicERC1967Upgrade | unmatched — not counted | — | listed in scope | no |
| view | UUPSUpgradeable | unmatched — not counted | — | listed in scope | no |
| view | GasRefundEnabled | unmatched — not counted | — | listed in scope | no |
| view | IGasRefunder | unmatched — not counted | — | listed in scope | no |
| view | MerkleLib | unmatched — not counted | — | listed in scope | no |
| view | MerkleProofLib | unmatched — not counted | — | listed in scope | no |
| view | Deserialize | unmatched — not counted | — | listed in scope | no |
| view | Machine | unmatched — not counted | — | listed in scope | no |
| view | ValueLib | unmatched — not counted | — | listed in scope | no |
| view | ChallengeLib | unmatched — not counted | — | listed in scope | no |
| view | GlobalStateLib | unmatched — not counted | — | listed in scope | no |
| view | MachineLib | unmatched — not counted | — | listed in scope | no |
| view | NodeLib | unmatched — not counted | — | listed in scope | no |
| view | RollupLib | unmatched — not counted | — | listed in scope | no |
| view | Instructions | unmatched — not counted | — | listed in scope | no |
| view | MerkleProof | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in Project Coverage | no |
| view | SequencerInbox | unmatched — not counted | — | listed in Project Coverage | no |
| view | Bridge | unmatched — not counted | — | listed in Project Coverage | no |
| view | OneStepProver | unmatched — not counted | — | listed in Project Coverage | no |
| view | OneStepProver0 | unmatched — not counted | — | mentioned in findings | no |
| view | Rollup | unmatched — not counted | — | listed in Project Coverage | no |
| view | ChallengeManager | unmatched — not counted | — | listed in Project Coverage | no |
| view | AdminFallbackProxy | unmatched — not counted | — | mentioned in finding TOB-NITRO-SC-1 | no |
| view | ArbRetryableTx | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-2 | no |
| view | ArbSys | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-6 | no |
| view | ArbAggregator | unmatched — not counted | — | mentioned in finding TOB-NITRO-ARBOS-21 | no |
| view | Bridge | unmatched — not counted | — | listed in scope | no |
| view | Inbox | unmatched — not counted | — | listed in scope | no |
| view | Outbox | unmatched — not counted | — | listed in scope | no |
| view | Rollup | unmatched — not counted | — | listed in scope | no |
| view | AdminFacet | unmatched — not counted | — | listed in scope | no |
| view | UserFacet | unmatched — not counted | — | listed in scope | no |
| view | RollupCreator | unmatched — not counted | — | listed in scope | no |
| view | BridgeCreator | unmatched — not counted | — | listed in scope | no |
| view | NodeFactory | unmatched — not counted | — | listed in scope | no |
| view | ChallengeFactory | unmatched — not counted | — | listed in scope | no |
| view | RollupAdminFacet | unmatched — not counted | — | listed in scope | no |
| view | RollupUserFacet | unmatched — not counted | — | listed in scope | no |
| view | Challenge | unmatched — not counted | — | listed in scope | no |
| view | L1Router | unmatched — not counted | — | listed in scope | no |
| view | L2Router | unmatched — not counted | — | listed in scope | no |
| view | L1GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | L2GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | L1ArbitrumGateway | unmatched — not counted | — | listed in scope | no |
| view | L2ArbitrumGateway | unmatched — not counted | — | listed in scope | no |
| view | L1ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| view | L2ERC20Gateway | unmatched — not counted | — | listed in scope | no |
| view | L1CustomGateway | unmatched — not counted | — | listed in scope | no |
| view | L2CustomGateway | unmatched — not counted | — | listed in scope | no |
| view | L1WETHGateway | unmatched — not counted | — | listed in scope | no |
| view | L2WETHGateway | unmatched — not counted | — | listed in scope | no |
| view | StandardArbERC20 | unmatched — not counted | — | listed in scope | no |
| view | aeWETH | unmatched — not counted | — | listed in scope | no |
| view | aeERC20 | unmatched — not counted | — | listed in scope | no |
| view | TransferAndCallToken | unmatched — not counted | — | listed in scope | no |
| view | BeaconProxyFactory | unmatched — not counted | — | listed in scope | no |
| view | ClonableBeaconProxy | unmatched — not counted | — | listed in scope | no |
| view | GasRefunder | unmatched — not counted | — | listed in scope | no |
| view | SequencerInbox | unmatched — not counted | — | listed in scope | no |
| view | OutboxEntry | unmatched — not counted | — | listed in scope | no |
| view | OldOutbox | unmatched — not counted | — | listed in scope | no |
| view | Whitelist | unmatched — not counted | — | listed in scope | no |
| view | AddressAliasHelper | unmatched — not counted | — | listed in scope | no |
| view | MerkleLib | unmatched — not counted | — | listed in scope | no |
| view | ChallengeLib | unmatched — not counted | — | listed in scope | no |
| view | RollupEventBridge | unmatched — not counted | — | listed in scope | no |
| view | ValidatorWalletCreator | unmatched — not counted | — | listed in scope | no |
| view | ProxySetter | unmatched — not counted | — | listed in scope | no |
| view | L2GatewayToken | unmatched — not counted | — | listed in scope | no |
| view | IArbToken | unmatched — not counted | — | listed in scope | no |
| view | IWETH9 | unmatched — not counted | — | listed in scope | no |
| view | ITokenGateway | unmatched — not counted | — | listed in scope | no |
| view | IGasRefunder | unmatched — not counted | — | listed in scope | no |
| view | IInbox | unmatched — not counted | — | listed in scope | no |
| view | IBridge | unmatched — not counted | — | listed in scope | no |
| view | IOneStepProof | unmatched — not counted | — | listed in scope | no |
| view | OneStepProof | unmatched — not counted | — | listed in scope | no |
| view | OneStepProof2 | unmatched — not counted | — | listed in scope | no |
| view | Machine | unmatched — not counted | — | listed in scope | no |
| view | RetryableTicketCreator | unmatched — not counted | — | listed in scope | no |
| view | GatewayRouter | unmatched — not counted | — | listed in scope | no |
| view | GatewayMessageHandler | unmatched — not counted | — | listed in scope | no |
| view | BytesParserWithDefault | unmatched — not counted | — | listed in scope | no |
| view | L1ArbitrumMessenger | unmatched — not counted | — | listed in scope | no |
| view | ERC20RollupUserFacet | unmatched — not counted | — | listed in scope | no |
| view | EthUserFacet | unmatched — not counted | — | listed in scope | no |
| view | Erc20UserFacet | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 53 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 277 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 30
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 231 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=21, low=6, medium=3
- Match method counts: n/a

Zero-match audit list:

- [24048] Manual audit seed
- [24049] view
- [24051] view
- [24052] view
- [24053] view
- [24054] view
- [24055] view
- [24056] view
- [24057] view
- [24058] view
- [24059] view
- [24060] view
- [24061] view
- [24062] view
- [24063] view
- [24064] view
- [24065] view
- [24066] view
- [24067] view
- [24068] view
- [24069] view
- [24071] view
- [24072] view
- [24073] view
- [24074] view
- [24075] view
- [24076] view
- [24077] view
- [24078] view
- [24079] view

Fork inheritance lineage and inherited audits are included when available.
