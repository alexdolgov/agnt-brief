# Agentic Audit Brief: Arbitrum Nova Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 30 (0 matched; 30 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 52.1% over 90 days

## Project Overview

- Project: Arbitrum Nova Bridge (`arbitrum-nova-bridge`)
- Website: [https://portal.arbitrum.io/bridge?l2ChainId=42170](https://portal.arbitrum.io/bridge?l2ChainId=42170)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 95 unique implementations (207 raw deployments)
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
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Confirmed-live implementations: 4 of 95 unique; 91 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/61
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 34
- Unique implementations: 95
- Raw deployments: 207
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

### ❓ Unverified (34)

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379458 | `0x096760f208390250649e3e8763348e783aef5562` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379459 | `0x09e9222e96e7b4ae2a407b98d48e330053351eee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379466 | `0x2f5624dc8800dfa0a82ac03509ef8bb8e7ac000e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379474 | `0x5288c571fd7ad117bea99bf60fe0846c4e84f933` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379483 | `0x6c411ad3e74de3e7bd422b94a27770f5b86c623b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379493 | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379495 | `0x842ec2c7d803033edf55e478f461fc547bc54eb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379496 | `0x8b9d9490a68b1f16ac8a21ddae5fd7ab9d708c14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379498 | `0x8f59c7a53b883563b34cbbb6ff021b03973e823a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-379513 | `0xb90e53fd945cd28ec4728cbfb566981dd571eb8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379521 | `0xc840838bc438d73c16c2f8b22d2ce3669963cd48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379527 | `0xd570ace65c43af47101fc6250fd6fc63d1c22a86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-379535 | `0xf916bfe431b7a7aae083273f5b862e00a15d60f4` | ❓ Unverified |

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
| needs_review | 34 |

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
