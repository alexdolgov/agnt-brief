# Agentic Audit Brief: alphagrowth

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

- Project: alphagrowth (`alphagrowth`)
- Website: [https://app.euler.finance/governor/alphagrowth?network=unichain](https://app.euler.finance/governor/alphagrowth?network=unichain)
- Lifecycle: active (Tier 0, 25.2% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, linea, unichain
- Contract surface: 251 unique implementations (327 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $7,315,785.21
- On-chain TVL (included contracts): $5,936,051.72
- TVL by chain: Unichain $2,988,703.54 | Base $1,740,580.58 | Ethereum $1,095,577.81 | Linea $111,189.80

## Project Description

This brief describes the observed EVM deployment and audit surface for alphagrowth. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 27 contract row(s) across arbitrum, base, ethereum, linea, unichain. Structural roles: 17 core, 10 unclassified. 16 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 27
- Structural roles: core (17), unclassified (10)
- Contract kinds: contract (27)
- Detected standards: erc1967proxy (16)
- Frameworks: openzeppelin-upgradeable (16), permit2 (1)
- Upgradeable-pattern rows: 16

## Fork Analysis

0 of 230 contracts are derived from known codebases. 230 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0120c2...f1b460`, chain 1)
- UnnamedContract (`0x056f3a...87718e`, chain 1)
- UnnamedContract (`0x09136d...a80ed3`, chain 1)
- UnnamedContract (`0x0c01f0...7d9534`, chain 1)
- UnnamedContract (`0x0dbadd...fd05f9`, chain 1)
- UnnamedContract (`0x0f93f3...075b32`, chain 1)
- UnnamedContract (`0x117576...bfa866`, chain 1)
- UnnamedContract (`0x122e9e...fbbaaf`, chain 1)
- UnnamedContract (`0x155d4a...f0dd8a`, chain 1)
- UnnamedContract (`0x1987c2...ce126a`, chain 1)
- UnnamedContract (`0x1e0b68...00a06d`, chain 1)
- UnnamedContract (`0x1f4618...7c516f`, chain 1)
- UnnamedContract (`0x25c538...e841b2`, chain 1)
- UnnamedContract (`0x27052e...a6c03c`, chain 1)
- UnnamedContract (`0x28c6f8...f38cea`, chain 1)
- UnnamedContract (`0x2daca7...bc4cf6`, chain 1)
- UnnamedContract (`0x2df975...70922e`, chain 1)
- UnnamedContract (`0x313603...162162`, chain 1)
- UnnamedContract (`0x3152ec...4536e0`, chain 1)
- UnnamedContract (`0x315f93...a8a38c`, chain 1)
- UnnamedContract (`0x328646...786c01`, chain 1)
- UnnamedContract (`0x3bfa66...daf4e5`, chain 1)
- UnnamedContract (`0x3f7cca...9e79ad`, chain 1)
- UnnamedContract (`0x417224...32d277`, chain 1)
- UnnamedContract (`0x481d49...0d3fa7`, chain 1)
- UnnamedContract (`0x561ff9...b8b0df`, chain 1)
- UnnamedContract (`0x586719...1193e8`, chain 1)
- UnnamedContract (`0x5a0064...500994`, chain 1)
- UnnamedContract (`0x5a9612...3caae8`, chain 1)
- UnnamedContract (`0x6173b0...64cfa2`, chain 1)
- UnnamedContract (`0x61aac4...2b5028`, chain 1)
- UnnamedContract (`0x631d8e...634de8`, chain 1)
- UnnamedContract (`0x67e4e4...11d96f`, chain 1)
- UnnamedContract (`0x6fc6be...a4d7ce`, chain 1)
- UnnamedContract (`0x74034e...81c959`, chain 1)
- UnnamedContract (`0x75e695...481c09`, chain 1)
- UnnamedContract (`0x77710e...ed5f84`, chain 1)
- UnnamedContract (`0x797dd8...7d48a9`, chain 1)
- UnnamedContract (`0x7c280d...34c5a8`, chain 1)
- UnnamedContract (`0x819662...4c5638`, chain 1)
- UnnamedContract (`0x81f8ac...e8a582`, chain 1)
- UnnamedContract (`0x82c710...7f86fa`, chain 1)
- UnnamedContract (`0x889b0a...c2b35f`, chain 1)
- UnnamedContract (`0x8dde38...44dc4c`, chain 1)
- UnnamedContract (`0x9167ff...e6de06`, chain 1)
- UnnamedContract (`0x940fca...2179e8`, chain 1)
- UnnamedContract (`0x94edbb...c97888`, chain 1)
- UnnamedContract (`0x982814...6a93b4`, chain 1)
- UnnamedContract (`0x998d76...c88ba4`, chain 1)
- UnnamedContract (`0xa10bdc...fff702`, chain 1)
- UnnamedContract (`0xa28c23...f1fe2b`, chain 1)
- UnnamedContract (`0xa586cb...bc6185`, chain 1)
- UnnamedContract (`0xa8cc68...0fdd10`, chain 1)
- UnnamedContract (`0xa992d3...f737af`, chain 1)
- UnnamedContract (`0xab2545...d36b1b`, chain 1)
- UnnamedContract (`0xabbe76...495325`, chain 1)
- UnnamedContract (`0xac73ef...b70eda`, chain 1)
- UnnamedContract (`0xae4d56...e095c8`, chain 1)
- UnnamedContract (`0xb4f776...535750`, chain 1)
- UnnamedContract (`0xb57320...cce6f7`, chain 1)
- UnnamedContract (`0xb5fa20...dafa71`, chain 1)
- UnnamedContract (`0xb77e25...a907aa`, chain 1)
- UnnamedContract (`0xbc4b4a...4628f1`, chain 1)
- UnnamedContract (`0xbd9a87...36e0cb`, chain 1)
- UnnamedContract (`0xbef0c8...3f7abe`, chain 1)
- UnnamedContract (`0xc40a68...607d01`, chain 1)
- UnnamedContract (`0xc41252...e1b0c5`, chain 1)
- UnnamedContract (`0xc51e90...ee5238`, chain 1)
- UnnamedContract (`0xcad0be...2765b7`, chain 1)
- UnnamedContract (`0xce45ef...7873de`, chain 1)
- UnnamedContract (`0xcf47fb...a8d47d`, chain 1)
- UnnamedContract (`0xd1552d...a5c273`, chain 1)
- UnnamedContract (`0xd53f83...540724`, chain 1)
- UnnamedContract (`0xd5f9af...c8de64`, chain 1)
- UnnamedContract (`0xd6506d...6cfe5f`, chain 1)
- UnnamedContract (`0xd8b27c...4984c2`, chain 1)
- UnnamedContract (`0xdc1aef...287e49`, chain 1)
- UnnamedContract (`0xdc685c...452ac8`, chain 1)
- UnnamedContract (`0xe0a80d...c42bce`, chain 1)
- UnnamedContract (`0xe1ce9a...458a10`, chain 1)
- UnnamedContract (`0xe3b66c...126760`, chain 1)
- UnnamedContract (`0xe3eb09...12a9e7`, chain 1)
- UnnamedContract (`0xe47bab...7d820e`, chain 1)
- UnnamedContract (`0xe668c3...337786`, chain 1)
- UnnamedContract (`0xe846ca...a82eaf`, chain 1)
- UnnamedContract (`0xea0c04...6fbc90`, chain 1)
- UnnamedContract (`0xea79e4...9e4fe1`, chain 1)
- UnnamedContract (`0xed667e...6447d7`, chain 1)
- UnnamedContract (`0xee8693...8aba3f`, chain 1)
- UnnamedContract (`0xf26c68...f0b732`, chain 1)
- UnnamedContract (`0xf2ec2d...bd1ce4`, chain 1)
- UnnamedContract (`0xf4bc42...cd06ca`, chain 1)
- UnnamedContract (`0xf69ff7...99716c`, chain 1)
- UnnamedContract (`0xf9a23b...88aa19`, chain 1)
- UnnamedContract (`0xfc323c...b708dd`, chain 1)
- UnnamedContract (`0xfc6f3a...c4a359`, chain 1)
- UnnamedContract (`0x218c9e...3ec6e5`, chain 130)
- UnnamedContract (`0x25e2ef...dade49`, chain 130)
- UnnamedContract (`0x5adade...437e2a`, chain 130)
- UnnamedContract (`0x6bc1f9...419436`, chain 130)
- UnnamedContract (`0xcf28a1...da076d`, chain 130)
- UnnamedContract (`0xe6806b...48d8e8`, chain 130)
- UnnamedContract (`0x07954b...c50524`, chain 8453)
- UnnamedContract (`0x0a6af3...0ca0cb`, chain 8453)
- UnnamedContract (`0x13632e...ab98a4`, chain 8453)
- UnnamedContract (`0x16b443...eacbfd`, chain 8453)
- UnnamedContract (`0x1e2f1e...b3847f`, chain 8453)
- UnnamedContract (`0x1fd3a2...15b885`, chain 8453)
- UnnamedContract (`0x24d633...a33933`, chain 8453)
- UnnamedContract (`0x29dbce...7d7a5c`, chain 8453)
- UnnamedContract (`0x34abb4...64101a`, chain 8453)
- UnnamedContract (`0x38df63...29afff`, chain 8453)
- UnnamedContract (`0x3f131a...cd26af`, chain 8453)
- UnnamedContract (`0x401e8e...86c124`, chain 8453)
- UnnamedContract (`0x4c1aed...90f61e`, chain 8453)
- UnnamedContract (`0x596dbb...2c7f93`, chain 8453)
- UnnamedContract (`0x5ce15f...ecd9ba`, chain 8453)
- UnnamedContract (`0x60c61a...720d0f`, chain 8453)
- UnnamedContract (`0x611745...b898d1`, chain 8453)
- UnnamedContract (`0x614bd5...cd5d17`, chain 8453)
- UnnamedContract (`0x6ae4ec...e77ef1`, chain 8453)
- UnnamedContract (`0x6d6021...e53113`, chain 8453)
- UnnamedContract (`0x774c08...5df10a`, chain 8453)
- UnnamedContract (`0x779225...74e2c6`, chain 8453)
- UnnamedContract (`0x78d6a3...4f9b3a`, chain 8453)
- UnnamedContract (`0x7c1487...bf8f53`, chain 8453)
- UnnamedContract (`0x81744b...342108`, chain 8453)
- UnnamedContract (`0x82d499...6439b2`, chain 8453)
- UnnamedContract (`0x85114a...749616`, chain 8453)
- UnnamedContract (`0x91a9ed...0b3f05`, chain 8453)
- UnnamedContract (`0x9f8765...4526d0`, chain 8453)
- UnnamedContract (`0xa67a95...256121`, chain 8453)
- UnnamedContract (`0xa6ad67...5fcf86`, chain 8453)
- UnnamedContract (`0xb45e4f...aa8b4a`, chain 8453)
- UnnamedContract (`0xbc4639...602ea2`, chain 8453)
- UnnamedContract (`0xc063c3...a650fb`, chain 8453)
- UnnamedContract (`0xc64fd6...6ae32e`, chain 8453)
- UnnamedContract (`0xcf8f0e...1743a6`, chain 8453)
- UnnamedContract (`0xd7c286...edb190`, chain 8453)
- UnnamedContract (`0xdbdc9c...6b3330`, chain 8453)
- UnnamedContract (`0xdc4efb...24af8d`, chain 8453)
- UnnamedContract (`0xeaa709...de5983`, chain 8453)
- UnnamedContract (`0xedcc19...f2f91f`, chain 8453)
- UnnamedContract (`0xeef576...8f6743`, chain 8453)
- UnnamedContract (`0xf3bb6b...37caea`, chain 8453)
- UnnamedContract (`0xf44801...989289`, chain 8453)
- UnnamedContract (`0x05d28a...6160b3`, chain 42161)
- UnnamedContract (`0x06b763...6e6a7f`, chain 42161)
- UnnamedContract (`0x0a1ecc...69b899`, chain 42161)
- UnnamedContract (`0x124bec...eedb57`, chain 42161)
- UnnamedContract (`0x22038f...901c3f`, chain 42161)
- UnnamedContract (`0x27b3b7...0f4d3c`, chain 42161)
- UnnamedContract (`0x37512f...38cd51`, chain 42161)
- UnnamedContract (`0x44c10d...c0c1cc`, chain 42161)
- UnnamedContract (`0x46e57d...be3812`, chain 42161)
- UnnamedContract (`0x482c3e...685e98`, chain 42161)
- UnnamedContract (`0x4ad21e...5e02ee`, chain 42161)
- UnnamedContract (`0x4d375e...b4917e`, chain 42161)
- UnnamedContract (`0x4dd134...f83c93`, chain 42161)
- UnnamedContract (`0x5059ff...a01ad7`, chain 42161)
- UnnamedContract (`0x5f7f81...365408`, chain 42161)
- UnnamedContract (`0x683b77...80dbe7`, chain 42161)
- UnnamedContract (`0x6afb8d...aa673b`, chain 42161)
- UnnamedContract (`0x6d47cb...074859`, chain 42161)
- UnnamedContract (`0x78e3e0...f7edff`, chain 42161)
- UnnamedContract (`0x79e1f4...384e6b`, chain 42161)
- UnnamedContract (`0x7d9790...61b785`, chain 42161)
- UnnamedContract (`0x878e12...5204ad`, chain 42161)
- UnnamedContract (`0x889e1c...68896c`, chain 42161)
- UnnamedContract (`0x8ca487...1e4c46`, chain 42161)
- UnnamedContract (`0xa8616e...5f1a58`, chain 42161)
- UnnamedContract (`0xaabb9c...e1fdd8`, chain 42161)
- UnnamedContract (`0xcc6700...b815c6`, chain 42161)
- UnnamedContract (`0xdbd974...894ee2`, chain 42161)
- UnnamedContract (`0xe81157...09086d`, chain 42161)
- UnnamedContract (`0xee074c...2d492c`, chain 42161)
- UnnamedContract (`0xf2cf48...df81ca`, chain 42161)
- UnnamedContract (`0xfe3320...926ddf`, chain 42161)
- UnnamedContract (`0x085f80...65e852`, chain 59144)
- UnnamedContract (`0x140bd9...99faf5`, chain 59144)
- UnnamedContract (`0x14efcc...0beada`, chain 59144)
- UnnamedContract (`0x179dfd...f1afb8`, chain 59144)
- UnnamedContract (`0x1da14e...457d7d`, chain 59144)
- UnnamedContract (`0x3cc796...68a839`, chain 59144)
- UnnamedContract (`0x42267d...cedde0`, chain 59144)
- UnnamedContract (`0x4789d8...0604f1`, chain 59144)
- UnnamedContract (`0x5464cc...9de2d3`, chain 59144)
- UnnamedContract (`0x5df408...7b8abf`, chain 59144)
- UnnamedContract (`0x64623f...7d23d0`, chain 59144)
- UnnamedContract (`0x873fea...a93e56`, chain 59144)
- UnnamedContract (`0x8bf8ed...5356f1`, chain 59144)
- UnnamedContract (`0x90f0b8...8c918d`, chain 59144)
- UnnamedContract (`0x92ba0d...8d9de0`, chain 59144)
- UnnamedContract (`0x9947f3...47a2a9`, chain 59144)
- UnnamedContract (`0x9ac2f0...2abb1f`, chain 59144)
- UnnamedContract (`0xa7ada0...35647d`, chain 59144)
- UnnamedContract (`0xae8da9...e9efff`, chain 59144)
- UnnamedContract (`0xb11fd9...2a3cab`, chain 59144)
- UnnamedContract (`0xb135dc...22efee`, chain 59144)
- UnnamedContract (`0xb770dc...e5aa49`, chain 59144)
- UnnamedContract (`0xcbef9b...7a578c`, chain 59144)
- UnnamedContract (`0xe27c25...469e1f`, chain 59144)
- UnnamedContract (`0xf3c659...f8588a`, chain 59144)
- UnnamedContract (`0xfb6448...496e6f`, chain 59144)
- BeaconProxy (`0x2f849b...ec8a6b`, chain 1)
- BeaconProxy (`0x3573a8...dd81c6`, chain 1)
- BeaconProxy (`0x412d0e...640229`, chain 1)
- BeaconProxy (`0x1f3134...0e1ffc`, chain 130)
- BeaconProxy (`0x54ff50...02d06a`, chain 130)
- BeaconProxy (`0x5d2511...796485`, chain 130)
- BeaconProxy (`0x6eae95...a682ba`, chain 130)
- BeaconProxy (`0x7650d7...24086f`, chain 130)
- BeaconProxy (`0xd49181...64ead3`, chain 130)
- BeaconProxy (`0xe36da4...729f86`, chain 130)
- BeaconProxy (`0x085178...9a7ee7`, chain 8453)
- BeaconProxy (`0x0a1a3b...80ee16`, chain 8453)
- BeaconProxy (`0x358f25...b9ea49`, chain 8453)
- BeaconProxy (`0x3f0d3f...638a7a`, chain 8453)
- BeaconProxy (`0x5fe2de...74ac25`, chain 8453)
- BeaconProxy (`0x7b181d...572609`, chain 8453)
- BeaconProxy (`0x859160...a4b410`, chain 8453)
- BeaconProxy (`0x882018...5d7f8b`, chain 8453)
- BeaconProxy (`0x990d61...df7cf2`, chain 8453)
- BeaconProxy (`0xd4a805...130d14`, chain 8453)
- BeaconProxy (`0xe72ea9...aec7e4`, chain 8453)
- BeaconProxy (`0xfab9af...05ccd3`, chain 8453)
- BeaconProxy (`0x359e36...21aa18`, chain 59144)
- BeaconProxy (`0x8955d7...b217b4`, chain 59144)
- BeaconProxy (`0xa8a02e...854968`, chain 59144)
- BeaconProxy (`0xf4712f...327086`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 27; live-surface rows included: 27 (26 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 208/209 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 208 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 43 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 43
- Confirmed-live implementations: 208 of 251 unique; 43 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/27
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 224
- Unique implementations: 251
- Raw deployments: 327
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,958,000.98
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EVault | core_logic | project_anchor | own_supporting | 7 | unichain | unit-226552 (7 proxies) | 7 deployments: unichain `0x1f3134...0e1ffc`; unichain `0x54ff50...02d06a`; unichain `0x5d2511...796485`; unichain `0x6eae95...a682ba`; unichain `0x7650d7...24086f`; unichain `0xd49181...64ead3`; unichain `0xe36da4...729f86` | ⚠️ Unaudited |
| EVault | core_logic | project_anchor | own_supporting | 12 | base | unit-226554 (12 proxies) | 12 deployments: base `0x085178...9a7ee7`; base `0x0a1a3b...80ee16`; base `0x358f25...b9ea49`; base `0x3f0d3f...638a7a`; base `0x5fe2de...74ac25`; base `0x7b181d...572609`; base `0x859160...a4b410`; base `0x882018...5d7f8b`; base `0x990d61...df7cf2`; base `0xd4a805...130d14`; base `0xe72ea9...aec7e4`; base `0xfab9af...05ccd3` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 14 | ethereum | n/a | 14 deployments: ethereum `0x29a56a...45cc8e`; ethereum `0x2a3564...8246ad`; ethereum `0x2ff5f1...19443b`; ethereum `0x35d4f8...8e88e3`; ethereum `0x49d9fd...614eb8`; ethereum `0x69a2fa...217705`; ethereum `0x6fe7fa...da0fbc`; ethereum `0x97c726...7ecc21`; ethereum `0xa7a064...ef7ec3`; ethereum `0xbd858d...0246cd`; ethereum `0xbfdc48...7198e9`; ethereum `0xc11d6b...1b0aef`; ethereum `0xf75d18...90b262`; ethereum `0xfbcc21...59512d` | ⚠️ Unaudited |
| EVault | core_logic | project_anchor | own_supporting | 3 | ethereum | unit-226550 (3 proxies) | 3 deployments: ethereum `0x2f849b...ec8a6b`; ethereum `0x3573a8...dd81c6`; ethereum `0x412d0e...640229` | ⚠️ Unaudited |
| EVault | core_logic | project_anchor | own_supporting | 4 | linea | unit-226553 (4 proxies) | 4 deployments: linea `0x359e36...21aa18`; linea `0x8955d7...b217b4`; linea `0xa8a02e...854968`; linea `0xf4712f...327086` | ⚠️ Unaudited |
| AccountLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60c42...e34bc7` | ⚠️ Unaudited |
| BeaconProxy | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x55f9ba...21a3d3`; ethereum `0xb7522c...821795` | ⚠️ Unaudited |
| CapRiskSteward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe56ca...e89b95` | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28e36e...583b85` | ⚠️ Unaudited |
| CrossAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x130eab...0ffaed`; ethereum `0x15226e...aac6bb`; ethereum `0x336d82...fba6e8`; ethereum `0x3fc222...1b4f12`; ethereum `0x4a35fe...b205af`; ethereum `0x55757d...58dcc1`; ethereum `0x562929...ec1832`; ethereum `0x566c24...eef5dd`; ethereum `0x5ae8c1...78c275`; ethereum `0x5b12ce...f6b066`; ethereum `0x5bc6c0...3a554c`; ethereum `0x62b1de...b25f61`; ethereum `0x6a569e...a84dc7`; ethereum `0x8424db...77ed0c`; ethereum `0xa52631...7b6cff`; ethereum `0xa625cb...62c564`; ethereum `0xadccfc...09c988`; ethereum `0xb0baa4...3254f0`; ethereum `0xca5b70...56b85f`; ethereum `0xcf8f3a...972785`; ethereum `0xd201e8...e98f36`; ethereum `0xd6b5eb...1179c5`; ethereum `0xd7440b...40cd22`; ethereum `0xd7ad78...f21895`; ethereum `0xf61517...5e6683`; ethereum `0xf9de42...156ce6`; ethereum `0xffe3b0...fab24e` | ⚠️ Unaudited |
| ERC4626EVCCollateralSecuritizeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f51d9...f76cbb` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e58bb...7fadde` | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0c9a3d...9ee383` | ⚠️ Unaudited |
| EulerSwapFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb013be...2cf228`; ethereum `0xd05213...04df5f` | ⚠️ Unaudited |
| EulerSwapPeriphery | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x208ff5...d16b06`; ethereum `0xd3a349...fd513e` | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5171ae...f53b63` | ⚠️ Unaudited |
| EulerSwapRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fccb8...32814a` | ⚠️ Unaudited |
| FactoryGovernor | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f1325...dc1f3d` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x4cfa6e...c3b7c1`; ethereum `0x86cb59...be3f56`; ethereum `0x95df7a...9b8439`; ethereum `0xb5004f...31ffb4`; ethereum `0xbd3365...2121dc`; ethereum `0xf58f4d...bdd9f0` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xcad001...fb1dce` | ⚠️ Unaudited |
| Governance | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-226551 | `0x8ff1c8...29dd7d` | ⚠️ Unaudited |
| GovernorAccessControlEmergency | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x354008...e30a1b` | ⚠️ Unaudited |
| IRMLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x061b6b...0f807a`; ethereum `0x57b1bb...6c52c1` | ⚠️ Unaudited |
| OracleLens | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30e6df...f7b48a` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b8c36...f74f5a` | ⚠️ Unaudited |
| UtilsLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1b6e0b...af2d95`; ethereum `0x7b89cc...e6e0fc`; ethereum `0xbef9b6...fcc071` | ⚠️ Unaudited |
| VaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x7427e9...0f3177`; ethereum `0x83801c...fc5b60`; ethereum `0xa18d79...ea66ab`; ethereum `0xb65c7a...bc59eb`; ethereum `0xc3c456...657403` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (224)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226329 | `0x0120c2...f1b460` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226330 | `0x056f3a...87718e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226331 | `0x09136d...a80ed3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226332 | `0x0c01f0...7d9534` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226333 | `0x0dbadd...fd05f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226334 | `0x0f93f3...075b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101f9a...dca1ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226335 | `0x117576...bfa866` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226336 | `0x122e9e...fbbaaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226337 | `0x155d4a...f0dd8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226338 | `0x1987c2...ce126a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226339 | `0x1e0b68...00a06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e3249...d18e66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226340 | `0x1f4618...7c516f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24d633...a33933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226341 | `0x25c538...e841b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226342 | `0x27052e...a6c03c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226343 | `0x28c6f8...f38cea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226344 | `0x2daca7...bc4cf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226345 | `0x2df975...70922e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226346 | `0x313603...162162` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226347 | `0x3152ec...4536e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226348 | `0x315f93...a8a38c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226349 | `0x328646...786c01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226350 | `0x3bfa66...daf4e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226351 | `0x3f7cca...9e79ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226352 | `0x417224...32d277` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226353 | `0x481d49...0d3fa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226354 | `0x561ff9...b8b0df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226355 | `0x586719...1193e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226356 | `0x5a0064...500994` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226357 | `0x5a9612...3caae8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226358 | `0x6173b0...64cfa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226359 | `0x61aac4...2b5028` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226360 | `0x631d8e...634de8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226361 | `0x67e4e4...11d96f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226362 | `0x6fc6be...a4d7ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226363 | `0x74034e...81c959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7594ae...6943a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226364 | `0x75e695...481c09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226365 | `0x77710e...ed5f84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226366 | `0x797dd8...7d48a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226367 | `0x7c280d...34c5a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226368 | `0x819662...4c5638` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226369 | `0x81f8ac...e8a582` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226370 | `0x82c710...7f86fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226371 | `0x889b0a...c2b35f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226372 | `0x8dde38...44dc4c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226373 | `0x9167ff...e6de06` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226374 | `0x940fca...2179e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226375 | `0x94edbb...c97888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95058f...d5d6a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x950c6b...361b39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226376 | `0x982814...6a93b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226377 | `0x998d76...c88ba4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226378 | `0xa10bdc...fff702` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226379 | `0xa28c23...f1fe2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2c12a...8a690e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226380 | `0xa586cb...bc6185` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226381 | `0xa8cc68...0fdd10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226382 | `0xa992d3...f737af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226383 | `0xab2545...d36b1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226384 | `0xabbe76...495325` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226385 | `0xac73ef...b70eda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226386 | `0xae4d56...e095c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226387 | `0xb4f776...535750` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226388 | `0xb57320...cce6f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226389 | `0xb5fa20...dafa71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226390 | `0xb77e25...a907aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226391 | `0xbc4b4a...4628f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226392 | `0xbd9a87...36e0cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226393 | `0xbef0c8...3f7abe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226394 | `0xc40a68...607d01` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226395 | `0xc41252...e1b0c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226396 | `0xc51e90...ee5238` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226397 | `0xcad0be...2765b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226398 | `0xce45ef...7873de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226399 | `0xcf47fb...a8d47d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226400 | `0xd1552d...a5c273` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226401 | `0xd53f83...540724` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226402 | `0xd5f9af...c8de64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226403 | `0xd6506d...6cfe5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226404 | `0xd8b27c...4984c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226405 | `0xdc1aef...287e49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226406 | `0xdc685c...452ac8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226407 | `0xe0a80d...c42bce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226408 | `0xe1ce9a...458a10` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226409 | `0xe3b66c...126760` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226410 | `0xe3eb09...12a9e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226411 | `0xe47bab...7d820e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226412 | `0xe668c3...337786` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226413 | `0xe846ca...a82eaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226414 | `0xea0c04...6fbc90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226415 | `0xea79e4...9e4fe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb3332...c9c9a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226416 | `0xed667e...6447d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226417 | `0xee8693...8aba3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226418 | `0xf26c68...f0b732` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226419 | `0xf2ec2d...bd1ce4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226420 | `0xf4bc42...cd06ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226421 | `0xf69ff7...99716c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226422 | `0xf9a23b...88aa19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226423 | `0xfc323c...b708dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-226424 | `0xfc6f3a...c4a359` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226425 | `0x218c9e...3ec6e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226426 | `0x25e2ef...dade49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x36639e...2d120a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226427 | `0x5adade...437e2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226428 | `0x6bc1f9...419436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | unichain | n/a | `0x8d9ff3...d352b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226429 | `0xcf28a1...da076d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-226430 | `0xe6806b...48d8e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226506 | `0x07954b...c50524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226507 | `0x0a6af3...0ca0cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226508 | `0x13632e...ab98a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226509 | `0x16b443...eacbfd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226510 | `0x1e2f1e...b3847f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226511 | `0x1fd3a2...15b885` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226512 | `0x24d633...a33933` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226513 | `0x29dbce...7d7a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a3564...8246ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226514 | `0x34abb4...64101a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226515 | `0x38df63...29afff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226516 | `0x3f131a...cd26af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226517 | `0x401e8e...86c124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x441029...d6823a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49d9fd...614eb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226518 | `0x4c1aed...90f61e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5304eb...ea0448` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226519 | `0x596dbb...2c7f93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226520 | `0x5ce15f...ecd9ba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226521 | `0x60c61a...720d0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226522 | `0x611745...b898d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226523 | `0x614bd5...cd5d17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x69a2fa...217705` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226524 | `0x6ae4ec...e77ef1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226525 | `0x6d6021...e53113` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226526 | `0x774c08...5df10a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226527 | `0x779225...74e2c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226528 | `0x78d6a3...4f9b3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226529 | `0x7c1487...bf8f53` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226530 | `0x81744b...342108` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226531 | `0x82d499...6439b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226532 | `0x85114a...749616` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226533 | `0x91a9ed...0b3f05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97c726...7ecc21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226534 | `0x9f8765...4526d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226535 | `0xa67a95...256121` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226536 | `0xa6ad67...5fcf86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226537 | `0xb45e4f...aa8b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb7522c...821795` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226538 | `0xbc4639...602ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd858d...0246cd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226539 | `0xc063c3...a650fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc11d6b...1b0aef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226540 | `0xc64fd6...6ae32e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226541 | `0xcf8f0e...1743a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226542 | `0xd7c286...edb190` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226543 | `0xdbdc9c...6b3330` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226544 | `0xdc4efb...24af8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226545 | `0xeaa709...de5983` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226546 | `0xedcc19...f2f91f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226547 | `0xeef576...8f6743` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226548 | `0xf3bb6b...37caea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-226549 | `0xf44801...989289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf75d18...90b262` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226431 | `0x05d28a...6160b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226432 | `0x06b763...6e6a7f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226433 | `0x0a1ecc...69b899` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226434 | `0x124bec...eedb57` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226435 | `0x22038f...901c3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226436 | `0x27b3b7...0f4d3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226437 | `0x37512f...38cd51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226438 | `0x44c10d...c0c1cc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226439 | `0x46e57d...be3812` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226440 | `0x482c3e...685e98` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226441 | `0x4ad21e...5e02ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226442 | `0x4d375e...b4917e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226443 | `0x4dd134...f83c93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226444 | `0x5059ff...a01ad7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226445 | `0x5f7f81...365408` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226446 | `0x683b77...80dbe7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226447 | `0x6afb8d...aa673b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226448 | `0x6d47cb...074859` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226449 | `0x78e3e0...f7edff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226450 | `0x79e1f4...384e6b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226451 | `0x7d9790...61b785` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226452 | `0x878e12...5204ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226453 | `0x889e1c...68896c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226454 | `0x8ca487...1e4c46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226455 | `0xa8616e...5f1a58` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226456 | `0xaabb9c...e1fdd8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226457 | `0xcc6700...b815c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226458 | `0xdbd974...894ee2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226460 | `0xe81157...09086d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226462 | `0xee074c...2d492c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226464 | `0xf2cf48...df81ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-226466 | `0xfe3320...926ddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226468 | `0x085f80...65e852` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226470 | `0x140bd9...99faf5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226472 | `0x14efcc...0beada` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226474 | `0x179dfd...f1afb8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226476 | `0x1da14e...457d7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226478 | `0x3cc796...68a839` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226480 | `0x42267d...cedde0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226482 | `0x4789d8...0604f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226484 | `0x5464cc...9de2d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226485 | `0x5df408...7b8abf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226487 | `0x64623f...7d23d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226489 | `0x873fea...a93e56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226491 | `0x8bf8ed...5356f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226492 | `0x90f0b8...8c918d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226494 | `0x92ba0d...8d9de0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226495 | `0x9947f3...47a2a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226496 | `0x9ac2f0...2abb1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226497 | `0xa7ada0...35647d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226498 | `0xae8da9...e9efff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226499 | `0xb11fd9...2a3cab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226500 | `0xb135dc...22efee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226501 | `0xb770dc...e5aa49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226502 | `0xcbef9b...7a578c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226503 | `0xe27c25...469e1f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226504 | `0xf3c659...f8588a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-226505 | `0xfb6448...496e6f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 5 |
| standard_library | 7 |
| needs_review | 224 |

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
