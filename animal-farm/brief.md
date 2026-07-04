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
| PigsTokenV2 | token | bsc | n/a | [`0x9a3321...742002`](./contracts/bsc-56/0x9a3321e1acd3b9f6debee5e042dd2411a1742002/) | ⚠️ Unaudited |
| DogPoundAutoPool | core_logic | bsc | n/a | [`0xf911d1...99e28d`](./contracts/bsc-56/0xf911d1d7118278f86eedfd94bc7cd141d299e28d/) | ⚠️ Unaudited |
| DogPoundLinearPool | core_logic | bsc | n/a | [`0x935b36...1c0297`](./contracts/bsc-56/0x935b36a774f2c04b8fa92acf3528d7df681c0297/) | ⚠️ Unaudited |
| AddLiquidityHelper | unknown | bsc | n/a | [`0xae672d...10fa97`](./contracts/bsc-56/0xae672d88eff0bc3f561044e7f41ee7099610fa97/) | ⚠️ Unaudited |
| DDSCA | unknown | bsc | n/a | 2 deployments: bsc [`0x321e03...7b6c61`](./contracts/bsc-56/0x321e03e005f4910ceb29476956084b20cc7b6c61/); bsc `0xa92af2...8eb37b` | ⚠️ Unaudited |
| DogCrediting | unknown | bsc | n/a | [`0xc0e30e...07426e`](./contracts/bsc-56/0xc0e30e8cddae2b5c03f841d4e08cbe22e807426e/) | ⚠️ Unaudited |
| DogPoundManager | unknown | bsc | n/a | 7 deployments: bsc [`0x1bae51...4283ff`](./contracts/bsc-56/0x1bae5144e890dd4ba4b53e6c553cddf8cb4283ff/); bsc `0x1bc00f...f51955`; bsc `0x4c01f4...67b2fa`; bsc `0x5a4491...61dc40`; bsc `0x6da822...f4ae41`; bsc `0x8462c7...97e253`; bsc `0xa24d16...9f57e4` | ⚠️ Unaudited |
| DogsToken | token | bsc | n/a | [`0xdbdc73...75fb9e`](./contracts/bsc-56/0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e/) | ⚠️ Unaudited |
| DogsTokenV2 | token | bsc | n/a | [`0x198271...6b9829`](./contracts/bsc-56/0x198271b868dae875bfea6e6e4045cdda5d6b9829/) | ⚠️ Unaudited |
| EmptyChef | unknown | bsc | n/a | [`0x05b4db...c7cc72`](./contracts/bsc-56/0x05b4dbf7c90323bfd3a82cece1fb802be9c7cc72/) | ⚠️ Unaudited |
| MasterChefDogs | unknown | bsc | n/a | [`0x932c5e...ffbd9a`](./contracts/bsc-56/0x932c5e1709a6895bc455e799b03f43d3a8ffbd9a/) | ⚠️ Unaudited |
| MasterChefDogsV2 | unknown | bsc | n/a | [`0x78205c...8d8a10`](./contracts/bsc-56/0x78205ce1a7e714cae95a32e65b6da7b2da8d8a10/) | ⚠️ Unaudited |
| MasterChefPigs | unknown | bsc | n/a | [`0xe5d9c5...7bad44`](./contracts/bsc-56/0xe5d9c56b271bc7820eee01bcc99e593e3e7bad44/) | ⚠️ Unaudited |
| MasterChefPigsV2 | unknown | bsc | n/a | [`0x853617...1c638f`](./contracts/bsc-56/0x8536178222fc6ec5fac49bbfebd74ca3051c638f/) | ⚠️ Unaudited |
| NftPigMcStakingBusd | unknown | bsc | n/a | [`0x4ecf22...172d5e`](./contracts/bsc-56/0x4ecf22372e8daeb749a9d5c449b86a1c19172d5e/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | 3 deployments: bsc [`0x2139c4...3bf8b4`](./contracts/bsc-56/0x2139c481d4f31dd03f924b6e87191e15a33bf8b4/); bsc `0xa0feb3...491b58`; bsc `0xb51519...ac8132` | ⚠️ Unaudited |
| PigsToken | token | bsc | n/a | [`0x3a4c15...ae07ce`](./contracts/bsc-56/0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce/) | ⚠️ Unaudited |
| StakeManager | unknown | bsc | n/a | [`0x25a959...ecbeea`](./contracts/bsc-56/0x25a959ddaeceb50c1b724c603a57fe7b32ecbeea/) | ⚠️ Unaudited |
| StrategyChef | core_logic | bsc | n/a | [`0x4e634a...051529`](./contracts/bsc-56/0x4e634a5226df8e9974196dd0c89fc47585051529/) | ⚠️ Unaudited |
| ToolBox | unknown | bsc | n/a | 4 deployments: bsc [`0x78f316...e02fb4`](./contracts/bsc-56/0x78f316775ace6cbf33f14b52903900fb9be02fb4/); bsc `0xbdc926...3cb0fc`; bsc `0xe9c42f...4b68ab`; bsc `0xfd3c76...36f18a` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x017e16...c3391c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0200af...aca422` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x034bbc...ba0210` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x037200...f362d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03f07b...2599e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x03f69c...122501` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0454fc...2e7a2c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06dfbd...82ce47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x072c7f...8eb9b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x091029...74f9f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f6174...045acb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1024b3...152f6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x124777...16cd47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14d7bf...14368b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1514c7...d256c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15aacf...fb424a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x188ee3...1434c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1995f5...a7e962` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e1455...1d044e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e5551...416d08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ea7fc...1e6cdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1eea77...8ae683` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f8a98...0d7e4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27835a...fbada2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2991cc...13a5ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3025d8...d5d8e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30904f...cbc838` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31c0c3...48f0da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x320cd3...b0ade8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x335de6...d1b8ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33f160...5f5081` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x357a1c...e4c35d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37b2b0...cf9948` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38d7a9...001efd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3acb47...e5deb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b1c1b...fe228b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b1d9e...1d7f86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b2760...724e50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b907b...21c9e0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d1fb3...5a96e4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d6312...877e64` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3df59d...630ec5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e49b1...5fea71` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3fdf16...caf76d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x441f20...4b4445` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44e324...af9a10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x457c96...a6bcc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45b34c...181dea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4cf5aa...a53ded` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d94bd...2860af` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50cf7f...eea13b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57ca20...3df5c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x589474...9292c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b5eec...69d742` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5be8b4...b533d8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c9a95...84bf82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ffdc9...5aaceb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x685bfd...3027ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68bdc7...2f7d55` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d02aa...1eb5dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d4ba7...434c4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74cf72...1b330c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x763e8a...81dd04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76fc3b...589cbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a351a...a04971` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d609b...99f899` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d8537...058f4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80356d...34706b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81a9fe...0bf775` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x827d56...8094bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83dc1c...de6f68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84b6dc...9dbf84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a7a4a...268594` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x904a78...0f3475` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9179d9...d0a9ab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x925c30...39d90a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x937786...d8905d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x953001...7259e3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9633ff...75a9b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x964b1b...fb2100` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x979d5f...ae044f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ed2a4...c600c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1a71b...e75767` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa27a0e...5cb173` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaaea8d...79cc8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabe200...50de1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaeb458...62471b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf0933...81f5cc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb0e638...9f544c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1d5ee...bcb347` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3a994...67e7e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb64455...b184c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb805b2...a8a89e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba39da...8d6103` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbcc617...c1c264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe59ef...876f1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbea84b...baf091` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc38a9b...75d581` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5e974...fc1275` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc972ca...26903f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcaa681...19b6f1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc64b7...643a1e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc8807...312ab5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccfad7...f7c9a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce18f2...7c47cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd063b1...6a7315` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd13bca...230bcd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd34f3d...30def4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd59408...2f304d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd5e57e...f2edf1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd923e3...11123b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd992c2...bfa735` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfb115...4c7932` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe04dd5...499910` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe1aa75...7eab3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe53403...6dde96` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe62da5...b34a15` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe796d6...044d3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeba538...98102c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed9ebe...d7209b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0cc0a...03dcba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2e6c5...1fe0ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4a1e5...312203` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf569e8...8ae767` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf97391...8891b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb087d...82674b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb7818...cbe22b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfce5e7...13a58b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd3a5f...957934` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff34a1...59aa51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff5cde...cc6772` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladin_af.pdf](https://dripcommunity.wiki/static/paladin_af.pdf) | Paladin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [animalfarm_truthseekers_audit.pdf](https://dripcommunity.wiki/static/animalfarm_truthseekers_audit.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x9a3321...742002`](./contracts/bsc-56/0x9a3321e1acd3b9f6debee5e042dd2411a1742002/) | PigsTokenV2 | token | $174,891.40 | Verified native implementation with $174,891.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf911d1...99e28d`](./contracts/bsc-56/0xf911d1d7118278f86eedfd94bc7cd141d299e28d/) | DogPoundAutoPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x935b36...1c0297`](./contracts/bsc-56/0x935b36a774f2c04b8fa92acf3528d7df681c0297/) | DogPoundLinearPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xae672d...10fa97`](./contracts/bsc-56/0xae672d88eff0bc3f561044e7f41ee7099610fa97/) | AddLiquidityHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x321e03...7b6c61`](./contracts/bsc-56/0x321e03e005f4910ceb29476956084b20cc7b6c61/) | DDSCA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc0e30e...07426e`](./contracts/bsc-56/0xc0e30e8cddae2b5c03f841d4e08cbe22e807426e/) | DogCrediting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1bae51...4283ff`](./contracts/bsc-56/0x1bae5144e890dd4ba4b53e6c553cddf8cb4283ff/) | DogPoundManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdbdc73...75fb9e`](./contracts/bsc-56/0xdbdc73b95cc0d5e7e99dc95523045fc8d075fb9e/) | DogsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x198271...6b9829`](./contracts/bsc-56/0x198271b868dae875bfea6e6e4045cdda5d6b9829/) | DogsTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x05b4db...c7cc72`](./contracts/bsc-56/0x05b4dbf7c90323bfd3a82cece1fb802be9c7cc72/) | EmptyChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x932c5e...ffbd9a`](./contracts/bsc-56/0x932c5e1709a6895bc455e799b03f43d3a8ffbd9a/) | MasterChefDogs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78205c...8d8a10`](./contracts/bsc-56/0x78205ce1a7e714cae95a32e65b6da7b2da8d8a10/) | MasterChefDogsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xe5d9c5...7bad44`](./contracts/bsc-56/0xe5d9c56b271bc7820eee01bcc99e593e3e7bad44/) | MasterChefPigs | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x853617...1c638f`](./contracts/bsc-56/0x8536178222fc6ec5fac49bbfebd74ca3051c638f/) | MasterChefPigsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4ecf22...172d5e`](./contracts/bsc-56/0x4ecf22372e8daeb749a9d5c449b86a1c19172d5e/) | NftPigMcStakingBusd | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3a4c15...ae07ce`](./contracts/bsc-56/0x3a4c15f96b3b058ab3fb5faf1440cc19e7ae07ce/) | PigsToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25a959...ecbeea`](./contracts/bsc-56/0x25a959ddaeceb50c1b724c603a57fe7b32ecbeea/) | StakeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4e634a...051529`](./contracts/bsc-56/0x4e634a5226df8e9974196dd0c89fc47585051529/) | StrategyChef | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78f316...e02fb4`](./contracts/bsc-56/0x78f316775ace6cbf33f14b52903900fb9be02fb4/) | ToolBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
