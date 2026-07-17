# Agentic Audit Brief: Animal Farm

## Project Overview

- Project: Animal Farm (`animal-farm`)
- Website: [https://animalfarm.app](https://animalfarm.app)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:01.614Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: bsc
- Contract surface: 151 unique implementations (163 raw deployments)
- DeFi Llama TVL: $65,992.00
- On-chain TVL (included contracts): $174,891.40
- TVL by chain: Bsc $174,891.40

## Project Description

Structural profile: 42 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 71 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 244; live-surface contracts included: 163 (32 live, 131 unknown).
- Excluded by liveness: 81 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/19 (0.0%)
- Deployed-live implementations: 20 of 151 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 131
- Unique implementations: 151
- Raw deployments: 163
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $174,891.40
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PigsTokenV2 | token | bsc | n/a | [`0x9a3321e1acd3b9f6debee5e042dd2411a1742002`](./contracts/bsc-56/0x9a3321e1acd3b9f6debee5e042dd2411a1742002/) | ⚠️ Unaudited |
| DogPoundAutoPool | core_logic | bsc | n/a | [`0xf911d1d7118278f86eedfd94bc7cd141d299e28d`](./contracts/bsc-56/0xf911d1d7118278f86eedfd94bc7cd141d299e28d/) | ⚠️ Unaudited |
| DogPoundLinearPool | core_logic | bsc | n/a | [`0x935b36a774f2c04b8fa92acf3528d7df681c0297`](./contracts/bsc-56/0x935b36a774f2c04b8fa92acf3528d7df681c0297/) | ⚠️ Unaudited |
| AddLiquidityHelper | unknown | bsc | n/a | [`0xae672d88eff0bc3f561044e7f41ee7099610fa97`](./contracts/bsc-56/0xae672d88eff0bc3f561044e7f41ee7099610fa97/) | ⚠️ Unaudited |
| DDSCA | unknown | bsc | n/a | 2 deployments: bsc [`0x321e03e005f4910ceb29476956084b20cc7b6c61`](./contracts/bsc-56/0x321e03e005f4910ceb29476956084b20cc7b6c61/); bsc `0xa92af2d72d5214206b9c15ab4c46705be68eb37b` | ⚠️ Unaudited |
| DogCrediting | unknown | bsc | n/a | [`0xc0e30e8cddae2b5c03f841d4e08cbe22e807426e`](./contracts/bsc-56/0xc0e30e8cddae2b5c03f841d4e08cbe22e807426e/) | ⚠️ Unaudited |
| DogPoundManager | unknown | bsc | n/a | 7 deployments: bsc [`0x1bae5144e890dd4ba4b53e6c553cddf8cb4283ff`](./contracts/bsc-56/0x1bae5144e890dd4ba4b53e6c553cddf8cb4283ff/); bsc `0x1bc00f2076a97a68511109883b0671721ff51955`; bsc `0x4c01f4b81d450bfbfa4a6779b78028930267b2fa`; bsc `0x5a44919dbd16fb88239e4aea21e3e9340061dc40`; bsc `0x6da8227bc7b576781ffcac69437e17b8d4f4ae41`; bsc `0x8462c7d5e268ed1f8e3466b7f418bb869297e253`; bsc `0xa24d16a86dfafed0877ea7fb625a73a1d09f57e4` | ⚠️ Unaudited |
| DogsToken | token | bsc | n/a | [`0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e`](./contracts/bsc-56/0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e/) | ⚠️ Unaudited |
| DogsTokenV2 | token | bsc | n/a | [`0x198271b868dae875bfea6e6e4045cdda5d6b9829`](./contracts/bsc-56/0x198271b868dae875bfea6e6e4045cdda5d6b9829/) | ⚠️ Unaudited |
| EmptyChef | unknown | bsc | n/a | [`0x05b4dbf7c90323bfd3a82cece1fb802be9c7cc72`](./contracts/bsc-56/0x05b4dbf7c90323bfd3a82cece1fb802be9c7cc72/) | ⚠️ Unaudited |
| MasterChefDogs | unknown | bsc | n/a | [`0x932c5e1709a6895bc455e799b03f43d3a8ffbd9a`](./contracts/bsc-56/0x932c5e1709a6895bc455e799b03f43d3a8ffbd9a/) | ⚠️ Unaudited |
| MasterChefDogsV2 | unknown | bsc | n/a | [`0x78205ce1a7e714cae95a32e65b6da7b2da8d8a10`](./contracts/bsc-56/0x78205ce1a7e714cae95a32e65b6da7b2da8d8a10/) | ⚠️ Unaudited |
| MasterChefPigs | unknown | bsc | n/a | [`0xe5d9c56b271bc7820eee01bcc99e593e3e7bad44`](./contracts/bsc-56/0xe5d9c56b271bc7820eee01bcc99e593e3e7bad44/) | ⚠️ Unaudited |
| MasterChefPigsV2 | unknown | bsc | n/a | [`0x8536178222fc6ec5fac49bbfebd74ca3051c638f`](./contracts/bsc-56/0x8536178222fc6ec5fac49bbfebd74ca3051c638f/) | ⚠️ Unaudited |
| NftPigMcStakingBusd | unknown | bsc | n/a | [`0x4ecf22372e8daeb749a9d5c449b86a1c19172d5e`](./contracts/bsc-56/0x4ecf22372e8daeb749a9d5c449b86a1c19172d5e/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | 3 deployments: bsc [`0x2139c481d4f31dd03f924b6e87191e15a33bf8b4`](./contracts/bsc-56/0x2139c481d4f31dd03f924b6e87191e15a33bf8b4/); bsc `0xa0feb3c81a36e885b6608df7f0ff69db97491b58`; bsc `0xb5151965b13872b183eba08e33d0d06743ac8132` | ⚠️ Unaudited |
| PigsToken | token | bsc | n/a | [`0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce`](./contracts/bsc-56/0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce/) | ⚠️ Unaudited |
| StakeManager | unknown | bsc | n/a | [`0x25a959ddaeceb50c1b724c603a57fe7b32ecbeea`](./contracts/bsc-56/0x25a959ddaeceb50c1b724c603a57fe7b32ecbeea/) | ⚠️ Unaudited |
| StrategyChef | core_logic | bsc | n/a | [`0x4e634a5226df8e9974196dd0c89fc47585051529`](./contracts/bsc-56/0x4e634a5226df8e9974196dd0c89fc47585051529/) | ⚠️ Unaudited |
| ToolBox | unknown | bsc | n/a | 4 deployments: bsc [`0x78f316775ace6cbf33f14b52903900fb9be02fb4`](./contracts/bsc-56/0x78f316775ace6cbf33f14b52903900fb9be02fb4/); bsc `0xbdc9269586a2f17a26ba28de5af6526e673cb0fc`; bsc `0xe9c42fec2a2f8246715d0cb85bf2207b8d4b68ab`; bsc `0xfd3c76b4ac5319609e1999ff589682484c36f18a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (131)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x017e16f99d97ed3fe4ea5a7822dffc7389c3391c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0200affa16b4c3f7ed4f7a10ae30ea88b5aca422` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x034bbcd5f5bc48543621e82fe393122d4dba0210` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x037200e969d3f509120bded2112078721cf362d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03f07b5ebaa049e5dc33a6cb298ca3e5792599e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03f69cb1e32e4c168ccfd24dafc7359e35122501` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0454fc5b92a61cbc4424196126ac19234b2e7a2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06dfbd13c917966b8f54a0476eef61879482ce47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x072c7f51dfa47a28fcd648270748f7735b8eb9b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x091029f784128124ab6d33dc150f4b875074f9f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f6174fad357f66ead774f03b8fe767615045acb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1024b3afc689e53ab93114b1f8847d2969152f6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x124777078de3afbecda572e0e4084f6e0916cd47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14d7bf543d4c3a29fc0a3df1d815f698a914368b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1514c766127378ea9653f9f4428fe25f3fd256c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15aacfe7e0350afa5adb5da0718de3c410fb424a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x188ee3f2cae405d01322edeb4717003c3a1434c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1995f551866d2f6d015d117921789d5e59a7e962` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e14551aeebe3b0e38197f5a2cbb5d73631d044e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e55514a1ba84cc4144841111a5bada6d1416d08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ea7fcae0d04e4838b7afa18cf5fadaa741e6cdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1eea77b889c09fb5b6ca160d89d0546e748ae683` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f8a98be5c102d145ac672ded99c5be0330d7e4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27835afa3cfdcaea3136a8af062f942677fbada2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2991cc8cab285fcc6ece3197658e9f1b0713a5ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3025d8f723475d18704dc11e3c6619726fd5d8e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30904f1b6427502ca38b5bbab83b56aaa3cbc838` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31c0c3e6caea79f9201bc8b89cd215ad5048f0da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x320cd36f6df26bbb1789883cb41510ae7bb0ade8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x335de6ed4f795d32371dda2d62c006a192d1b8ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33f1600b12a081f83929b1b770fe5b96de5f5081` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x357a1ca5db8f003050720e8f0ce7d60e46e4c35d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37b2b0bd351dd7ebe847824e83cb7d887ccf9948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38d7a9d779f0bb117277c8133f6820a103001efd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3acb478b3f1788564679e67dbc45b6317ee5deb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b1c1bbbc07c21d4173eaa529d83b391d5fe228b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b1d9e4ae0ab68b5f6af52494c51434be11d7f86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b27607f3a6f4bfabefca543b550638a1a724e50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b907b63f8c0550669132510f08fcf5ce921c9e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d1fb361f30907bcfbb4642513051645da5a96e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d631219ee79826807ecdc89abef7cb76f877e64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3df59d54668fdc5166d7dfb120aaf2e472630ec5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e49b155ba9a163d4f76790988acb786395fea71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fdf16cb5781a6821014460d0797736fd8caf76d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x441f207586a698a9f56567e77e84f67fa24b4445` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44e3241845c40f614c061ac16b961dfe0aaf9a10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x457c9641bc32f82eefec63f428eb7f696fa6bcc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45b34ca9ae75fb908bf1e0476d1f2e8756181dea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cf5aa7a6782458a2a46c505361832e1bea53ded` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d94bdb5ae9d6e79c39553707d8909cf572860af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50cf7f08bd9b2b81ba2d8cfd521899d3c4eea13b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57ca20b1dde5aabcdd51d129e8f682fc023df5c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x589474207c840fcbd49cedf8cd418346359292c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b5eec0aa97ddd92dfd305911ce2e8baf469d742` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5be8b4ab584c15698f684a7393bd84a585b533d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c9a956cfb7ab000a8e1add51c282d2dd884bf82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ffdc9d0c4d413a874bff9de27827391745aaceb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x685bfdd3c2937744c13d7de0821c83191e3027ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68bdc7b480d5b4df3bb086cc3f33b0aef52f7d55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d02aa34bdc9fa20d54736a479dc45eb0a1eb5dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d4ba76c825683934969890b14312dd693434c4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74cf72b17be2adc01e45c36431ae2b66561b330c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x763e8a055c6ad6d1de305d7b98458c2de381dd04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76fc3b5577fac0e2ed2f788229bcc46a3c589cbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a351a8ee0d6059d7d38ec9b5835fc9559a04971` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d609b5f4d7826a38a49f54d066ce0a42b99f899` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d853706e39662dab50aa57e1e36044cda058f4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80356dd11b7a2dc5da52fc06c238f41ea434706b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81a9fea65f886d0ce6369591bc7c5b50240bf775` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x827d56dacd3b5a842d53a84c5b292b9b428094bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83dc1cc7c74fda96b841c5139dd00dba1cde6f68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84b6dcd42eac882eaf62a8bebd2d25676d9dbf84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a7a4a49b18b6579580b07c99138e46143268594` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x904a7813dedabfbcfa3b08cbd6c88aa91f0f3475` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9179d972e37efb61bd4d6cc7bee89a4f42d0a9ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x925c3092765f5b4b9a1b966bf76c79b8b639d90a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x937786701cb82f965e75be6fd01661fd91d8905d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x953001d99927006138bc6c397c9804ebab7259e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9633ff35359f4e0466d580560074533c5275a9b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x964b1b38cb682b7bcb79d72aab134a4d68fb2100` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x979d5fe798d4c610870509ffe02f06b412ae044f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ed2a4dbc28f89569aa38a7eaf9b2799c5c600c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1a71b353e201a3a0937f5a24cb4708a6be75767` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa27a0e9404034f58dd4fa4486aa68e292e5cb173` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaea8d289597666544bc668eb0cbe8027079cc8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabe2005849560730f68e74a99b92ed5a9650de1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaeb45888f3ed2d0e4431651fc85ddb97b162471b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf0933bf8e34156a40aa50c466efe3bcbe81f5cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0e638940fa8bf984a7ff40b8d75ad7abf9f544c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1d5ee73ec0ef2989e3fad8dada9b5f708bcb347` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3a9948f11b9c591b557f43370ac4cb89767e7e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb644557180cd7ce96a24feab090cb3ffb7b184c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb805b23cb7fb36feb47323b1ad23ee1691a8a89e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba39da7f8dd14c351316e0c50e88b317788d6103` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbcc61718f0fc504261664be20e9a1fa6fec1c264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe59efda05ba570f558ccbc60979ae1072876f1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbea84bff7ca2b0b6fc5103be8c46a21b79baf091` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc38a9b67d4025e06853e2694d5b094d36675d581` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5e97424a665f2442848e2d30be3902363fc1275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc972ca9b14d27728001685da8bafc77c8f26903f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcaa681bed02329b3f5fb03aeb3f24623d519b6f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc64b739ff62ea790b00918a4e206ce183643a1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc8807357ee426ca1667779769f2af7dca312ab5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccfad730b1139290fc2ad10b98ea07a3d4f7c9a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce18f29152c159bc0d77b4862ffc2cf0207c47cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd063b1e79e661b435560ac9688316589036a7315` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd13bcac0d21b6ef45d23e004d2411613c9230bcd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd34f3d4dd00f95ded0d64d779c91856cbe30def4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd59408cc12914951d4dd40f7c534ee9c8e2f304d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5e57e1c1b4d1b52129f7dd1a2fcdbbc4df2edf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd923e391862be208e6620c30cde1c5f53d11123b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd992c2eece765d7b584ffe8658fb3b959bbfa735` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfb1150a25ff1a02294333caab395cc00b4c7932` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe04dd50aa3b857d42ca153db49fe0c1a5b499910` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1aa753b1da5ff3b9b8c75d8e7636ceabf7eab3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe53403926ef9bc8d7e3b8b5128998aa7966dde96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe62da59292f4af037037d926e19b769c7cb34a15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe796d6e6586c441bc599bd2e75d85acc05044d3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeba5381d9933f6ab7b2a4ba5316611ecd798102c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed9ebeae8cbbe16693dd0ac2a7c1cd6a56d7209b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0cc0a00a8453414e3fe1c2730148315db03dcba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2e6c585e665c1ef5b40e070958b6ab66b1fe0ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4a1e5fe7d7b5dc2b6ff412af96341c6ea312203` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf569e839e5ed218d1c0697a17da4a36e828ae767` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf973913556beacd65d186eb63d89da73268891b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb087db5af0c4fe5c98e5733e0603c401882674b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb7818d0d569160467a5d05e6a869e8912cbe22b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfce5e747242f6e3b199c7ad2660fb6871613a58b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd3a5f995664387c14e98b6b69f822296d957934` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff34a17ed71fee1db577e2295aecf0456b59aa51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff5cde60fab52bc0fbae240e7ff9a1c0fdcc6772` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladin_af.pdf](https://dripcommunity.wiki/static/paladin_af.pdf) | Paladin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [animalfarm_truthseekers_audit.pdf](https://dripcommunity.wiki/static/animalfarm_truthseekers_audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x9a3321e1acd3b9f6debee5e042dd2411a1742002`](./contracts/bsc-56/0x9a3321e1acd3b9f6debee5e042dd2411a1742002/) | PigsTokenV2 | token | $174,891.40 | Verified native implementation with $174,891.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf911d1d7118278f86eedfd94bc7cd141d299e28d`](./contracts/bsc-56/0xf911d1d7118278f86eedfd94bc7cd141d299e28d/) | DogPoundAutoPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x935b36a774f2c04b8fa92acf3528d7df681c0297`](./contracts/bsc-56/0x935b36a774f2c04b8fa92acf3528d7df681c0297/) | DogPoundLinearPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xae672d88eff0bc3f561044e7f41ee7099610fa97`](./contracts/bsc-56/0xae672d88eff0bc3f561044e7f41ee7099610fa97/) | AddLiquidityHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x321e03e005f4910ceb29476956084b20cc7b6c61`](./contracts/bsc-56/0x321e03e005f4910ceb29476956084b20cc7b6c61/) | DDSCA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc0e30e8cddae2b5c03f841d4e08cbe22e807426e`](./contracts/bsc-56/0xc0e30e8cddae2b5c03f841d4e08cbe22e807426e/) | DogCrediting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1bae5144e890dd4ba4b53e6c553cddf8cb4283ff`](./contracts/bsc-56/0x1bae5144e890dd4ba4b53e6c553cddf8cb4283ff/) | DogPoundManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e`](./contracts/bsc-56/0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e/) | DogsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x198271b868dae875bfea6e6e4045cdda5d6b9829`](./contracts/bsc-56/0x198271b868dae875bfea6e6e4045cdda5d6b9829/) | DogsTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05b4dbf7c90323bfd3a82cece1fb802be9c7cc72`](./contracts/bsc-56/0x05b4dbf7c90323bfd3a82cece1fb802be9c7cc72/) | EmptyChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x932c5e1709a6895bc455e799b03f43d3a8ffbd9a`](./contracts/bsc-56/0x932c5e1709a6895bc455e799b03f43d3a8ffbd9a/) | MasterChefDogs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78205ce1a7e714cae95a32e65b6da7b2da8d8a10`](./contracts/bsc-56/0x78205ce1a7e714cae95a32e65b6da7b2da8d8a10/) | MasterChefDogsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe5d9c56b271bc7820eee01bcc99e593e3e7bad44`](./contracts/bsc-56/0xe5d9c56b271bc7820eee01bcc99e593e3e7bad44/) | MasterChefPigs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8536178222fc6ec5fac49bbfebd74ca3051c638f`](./contracts/bsc-56/0x8536178222fc6ec5fac49bbfebd74ca3051c638f/) | MasterChefPigsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ecf22372e8daeb749a9d5c449b86a1c19172d5e`](./contracts/bsc-56/0x4ecf22372e8daeb749a9d5c449b86a1c19172d5e/) | NftPigMcStakingBusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce`](./contracts/bsc-56/0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce/) | PigsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25a959ddaeceb50c1b724c603a57fe7b32ecbeea`](./contracts/bsc-56/0x25a959ddaeceb50c1b724c603a57fe7b32ecbeea/) | StakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e634a5226df8e9974196dd0c89fc47585051529`](./contracts/bsc-56/0x4e634a5226df8e9974196dd0c89fc47585051529/) | StrategyChef | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78f316775ace6cbf33f14b52903900fb9be02fb4`](./contracts/bsc-56/0x78f316775ace6cbf33f14b52903900fb9be02fb4/) | ToolBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 131 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12661] paladin_af.pdf
- [12662] animalfarm_truthseekers_audit.pdf

Fork inheritance lineage and inherited audits are included when available.
