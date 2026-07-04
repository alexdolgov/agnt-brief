# Agentic Audit Brief: hunny-finance

## Project Overview

- Project: hunny-finance (`hunny-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.674Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: bsc
- Contract surface: 46 unique implementations (46 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 46 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 10 common project-authored base contract(s) (pausableupgradeable, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 46; live-surface contracts included: 46 (46 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/36 (2.8%)
- Deployed-live implementations: 46 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/46
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 46
- Raw deployments: 46
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 2.2% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultBananaToBanana | unknown | bsc | n/a | [`0x114cdd...174531`](./contracts/bsc-56/0x114cdd73eec6ad480ce8fa30617368b92b174531/) | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x0a631c...e18ac0`](./contracts/bsc-56/0x0a631c0259f635f29cd4df3ca75e678b3ce18ac0/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x205a3f...fe1b33`](./contracts/bsc-56/0x205a3f1b36320d4199f11910657dd7cdadfe1b33/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x2d4a11...b02b6d`](./contracts/bsc-56/0x2d4a1164b6bb54ef37d14a160e8372499eb02b6d/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x5ac6ca...83b32a`](./contracts/bsc-56/0x5ac6ca0473fa5a25278898d8b72c7c90e083b32a/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x7969ef...2d644f`](./contracts/bsc-56/0x7969ef7b7d6f79a798e85367c5824b835c2d644f/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0x9158c8...8b0c51`](./contracts/bsc-56/0x9158c8c22709ef912a715bdc750e6f18768b0c51/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0xe2d593...b00efe`](./contracts/bsc-56/0xe2d593a35c1a31be44019d952af099b35db00efe/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | bsc | n/a | [`0xf3b11c...df2521`](./contracts/bsc-56/0xf3b11c00eaa421b089a7362a91d7032aeedf2521/) | ⚠️ Unaudited |
| CakeFlipVault | unknown | bsc | n/a | [`0x12180b...b8f5a4`](./contracts/bsc-56/0x12180bb36ddbce325b3be0c087d61fce39b8f5a4/) | ⚠️ Unaudited |
| CakeVault | unknown | bsc | n/a | [`0x0fcd52...c171fe`](./contracts/bsc-56/0x0fcd52fd40b77e28062cf9889dc3779c31c171fe/) | ⚠️ Unaudited |
| Deployer1 | unknown | bsc | n/a | [`0xb4b14f...66199b`](./contracts/bsc-56/0xb4b14fd0f8161f95fa30a9f23a439d157f66199b/) | ⚠️ Unaudited |
| HunnyBNBPool | unknown | bsc | n/a | [`0x434af7...185eae`](./contracts/bsc-56/0x434af79fd4e96b5985719e3f5f766619dc185eae/) | ⚠️ Unaudited |
| HunnyLottery | unknown | bsc | n/a | [`0x1b726f...629ef5`](./contracts/bsc-56/0x1b726f05fc9a9c056d2cfd07916d1220f5629ef5/) | ⚠️ Unaudited |
| HunnyLotteryNFT | unknown | bsc | n/a | [`0x66ce6a...7d9f31`](./contracts/bsc-56/0x66ce6a34ed15ee6bcf37d06261199f32a87d9f31/) | ⚠️ Unaudited |
| HunnyLoveToken | unknown | bsc | n/a | [`0x4c9368...8fdbfa`](./contracts/bsc-56/0x4c9368815371066620e17e0156beb53e5d8fdbfa/) | ⚠️ Unaudited |
| HunnyMall | unknown | bsc | n/a | [`0x0347fc...106025`](./contracts/bsc-56/0x0347fcd442eea0d1b99a56d747989f932e106025/) | ⚠️ Unaudited |
| HunnyMinter | unknown | bsc | n/a | [`0x15d70a...bc56ca`](./contracts/bsc-56/0x15d70a537fe24883735e5c5bd62886ba8abc56ca/) | ⚠️ Unaudited |
| HunnyMultipliers | unknown | bsc | n/a | [`0x1d9dc1...bb9ec7`](./contracts/bsc-56/0x1d9dc129a419c18453626f0b778ee1e09cbb9ec7/) | ⚠️ Unaudited |
| HunnyOracle | unknown | bsc | n/a | [`0x1451c8...6b59d9`](./contracts/bsc-56/0x1451c8eeec771194bec9fbdea81d5aa35b6b59d9/) | ⚠️ Unaudited |
| HunnyPlay | unknown | bsc | n/a | [`0x0777b9...d77e46`](./contracts/bsc-56/0x0777b94d9fe4b198ce2d201f8c7725f436d77e46/) | ⚠️ Unaudited |
| HunnyPlayV2BABY | unknown | bsc | n/a | [`0x44dce2...54e0e8`](./contracts/bsc-56/0x44dce2150fb7a6a8073a9b82020d5a0d1a54e0e8/) | ⚠️ Unaudited |
| HunnyPlayV2BUSD | unknown | bsc | n/a | [`0x002328...f691f8`](./contracts/bsc-56/0x002328c51f9251603dcf1476d4faa2d2c0f691f8/) | ⚠️ Unaudited |
| HunnyPlayV2USDT | unknown | bsc | n/a | [`0x46095c...c548e2`](./contracts/bsc-56/0x46095cb948bd59eeed4f9aa85ca3fdc90bc548e2/) | ⚠️ Unaudited |
| HunnyPoker | unknown | bsc | n/a | [`0x0f2257...7102f9`](./contracts/bsc-56/0x0f2257f19714c51fb6bace124510adff257102f9/) | ⚠️ Unaudited |
| HunnyPool | unknown | bsc | n/a | [`0x389d27...7cd18d`](./contracts/bsc-56/0x389d2719a9bcc29583db89fd9454ade9e57cd18d/) | ⚠️ Unaudited |
| HunnyPresale | unknown | bsc | n/a | [`0x536ae5...a668b8`](./contracts/bsc-56/0x536ae5308db81aefc83470424e41c6b9b6a668b8/) | ⚠️ Unaudited |
| HunnyPresaleV2 | unknown | bsc | n/a | [`0x0c8e76...38c016`](./contracts/bsc-56/0x0c8e763920ba7c544d4081f354c9f3a51138c016/) | ⚠️ Unaudited |
| HunnyToken | unknown | bsc | n/a | [`0x565b72...f46d69`](./contracts/bsc-56/0x565b72163f17849832a692a3c5928cc502f46d69/) | ⚠️ Unaudited |
| Payment | unknown | bsc | n/a | [`0x47d6c6...ff40cd`](./contracts/bsc-56/0x47d6c688acfbc58e23032210392d22d936ff40cd/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x61f68a...5f6e14`](./contracts/bsc-56/0x61f68a0ae37c120bd850fe44dc6b5264815f6e14/) | ⚠️ Unaudited |
| SafeVenus | unknown | bsc | n/a | [`0x5f8b76...77932a`](./contracts/bsc-56/0x5f8b7674e8c4cd26a0ebf61256edd520f377932a/) | ⚠️ Unaudited |
| StrategyHelperV1 | unknown | bsc | n/a | [`0x1ab0a3...3591be`](./contracts/bsc-56/0x1ab0a363daa5e6158b3f5e5957424bbcdc3591be/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xbabaae...020613`](./contracts/bsc-56/0xbabaae36b2d0e37683731a79096d4cd14a020613/) | ⚠️ Unaudited |
| VaultAlpacaBNB | unknown | bsc | n/a | [`0x9d9a2a...145ec7`](./contracts/bsc-56/0x9d9a2ace3a50b8ad40ec6e6142df5a1b95145ec7/) | ⚠️ Unaudited |
| VaultCakeToCake | unknown | bsc | n/a | [`0x0134f4...e00589`](./contracts/bsc-56/0x0134f4adb86871917dc5cc052a9ba409f4e00589/) | ⚠️ Unaudited |
| VaultCakeToLove | unknown | bsc | n/a | [`0x50e086...70e7b1`](./contracts/bsc-56/0x50e086ccc37e28c233a0abb2d9aaffe23b70e7b1/) | ⚠️ Unaudited |
| VaultFlipToBanana | unknown | bsc | n/a | [`0x239c30...304e2f`](./contracts/bsc-56/0x239c30164ece1ac41e99d2c3ec91071215304e2f/) | ⚠️ Unaudited |
| VaultFlipToCake | unknown | bsc | n/a | [`0x022c0a...213430`](./contracts/bsc-56/0x022c0a3685228fc9a5877685b7fc670c04213430/) | ⚠️ Unaudited |
| VaultHunny | unknown | bsc | n/a | [`0x09fd83...21d389`](./contracts/bsc-56/0x09fd83e51f06b80934fe21dbe9be13671c21d389/) | ⚠️ Unaudited |
| VaultHunnyMaximizer | unknown | bsc | n/a | [`0x29db90...936a6f`](./contracts/bsc-56/0x29db90c10632d3de563d39012f2599b0c8936a6f/) | ⚠️ Unaudited |
| VaultStrategyAlpacaRabbit | unknown | bsc | n/a | [`0x1b9eed...da8045`](./contracts/bsc-56/0x1b9eed0fa5beecd36ebe7af3755f1c1361da8045/) | ⚠️ Unaudited |
| VaultStrategyAlpacaRabbitBNB | unknown | bsc | n/a | [`0x10f8ca...e297f4`](./contracts/bsc-56/0x10f8ca4cf739f148276c2a5b434e8dce19e297f4/) | ⚠️ Unaudited |
| VaultVenus | unknown | bsc | n/a | [`0x5c1c00...1303c2`](./contracts/bsc-56/0x5c1c00812948a6e9f0525a96ee6e5e67541303c2/) | ⚠️ Unaudited |
| VaultVenusBridge | unknown | bsc | n/a | [`0x33b218...b28afe`](./contracts/bsc-56/0x33b218fc65deceb02ae54bce5dd2e85c1db28afe/) | ⚠️ Unaudited |
| VaultVesting | unknown | bsc | n/a | [`0x0e0105...06eaf9`](./contracts/bsc-56/0x0e01053b4090489e8d4efd39fabcafbbe706eaf9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/pancakehunny](https://skynet.certik.com/projects/pancakehunny) | CertiK | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x12180b...b8f5a4`](./contracts/bsc-56/0x12180bb36ddbce325b3be0c087d61fce39b8f5a4/) | CakeFlipVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0fcd52...c171fe`](./contracts/bsc-56/0x0fcd52fd40b77e28062cf9889dc3779c31c171fe/) | CakeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb4b14f...66199b`](./contracts/bsc-56/0xb4b14fd0f8161f95fa30a9f23a439d157f66199b/) | Deployer1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x434af7...185eae`](./contracts/bsc-56/0x434af79fd4e96b5985719e3f5f766619dc185eae/) | HunnyBNBPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b726f...629ef5`](./contracts/bsc-56/0x1b726f05fc9a9c056d2cfd07916d1220f5629ef5/) | HunnyLottery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x66ce6a...7d9f31`](./contracts/bsc-56/0x66ce6a34ed15ee6bcf37d06261199f32a87d9f31/) | HunnyLotteryNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4c9368...8fdbfa`](./contracts/bsc-56/0x4c9368815371066620e17e0156beb53e5d8fdbfa/) | HunnyLoveToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0347fc...106025`](./contracts/bsc-56/0x0347fcd442eea0d1b99a56d747989f932e106025/) | HunnyMall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15d70a...bc56ca`](./contracts/bsc-56/0x15d70a537fe24883735e5c5bd62886ba8abc56ca/) | HunnyMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1d9dc1...bb9ec7`](./contracts/bsc-56/0x1d9dc129a419c18453626f0b778ee1e09cbb9ec7/) | HunnyMultipliers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1451c8...6b59d9`](./contracts/bsc-56/0x1451c8eeec771194bec9fbdea81d5aa35b6b59d9/) | HunnyOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0777b9...d77e46`](./contracts/bsc-56/0x0777b94d9fe4b198ce2d201f8c7725f436d77e46/) | HunnyPlay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x44dce2...54e0e8`](./contracts/bsc-56/0x44dce2150fb7a6a8073a9b82020d5a0d1a54e0e8/) | HunnyPlayV2BABY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x002328...f691f8`](./contracts/bsc-56/0x002328c51f9251603dcf1476d4faa2d2c0f691f8/) | HunnyPlayV2BUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46095c...c548e2`](./contracts/bsc-56/0x46095cb948bd59eeed4f9aa85ca3fdc90bc548e2/) | HunnyPlayV2USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0f2257...7102f9`](./contracts/bsc-56/0x0f2257f19714c51fb6bace124510adff257102f9/) | HunnyPoker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x389d27...7cd18d`](./contracts/bsc-56/0x389d2719a9bcc29583db89fd9454ade9e57cd18d/) | HunnyPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x536ae5...a668b8`](./contracts/bsc-56/0x536ae5308db81aefc83470424e41c6b9b6a668b8/) | HunnyPresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0c8e76...38c016`](./contracts/bsc-56/0x0c8e763920ba7c544d4081f354c9f3a51138c016/) | HunnyPresaleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x565b72...f46d69`](./contracts/bsc-56/0x565b72163f17849832a692a3c5928cc502f46d69/) | HunnyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x47d6c6...ff40cd`](./contracts/bsc-56/0x47d6c688acfbc58e23032210392d22d936ff40cd/) | Payment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5f8b76...77932a`](./contracts/bsc-56/0x5f8b7674e8c4cd26a0ebf61256edd520f377932a/) | SafeVenus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ab0a3...3591be`](./contracts/bsc-56/0x1ab0a363daa5e6158b3f5e5957424bbcdc3591be/) | StrategyHelperV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9d9a2a...145ec7`](./contracts/bsc-56/0x9d9a2ace3a50b8ad40ec6e6142df5a1b95145ec7/) | VaultAlpacaBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0134f4...e00589`](./contracts/bsc-56/0x0134f4adb86871917dc5cc052a9ba409f4e00589/) | VaultCakeToCake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x50e086...70e7b1`](./contracts/bsc-56/0x50e086ccc37e28c233a0abb2d9aaffe23b70e7b1/) | VaultCakeToLove | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x239c30...304e2f`](./contracts/bsc-56/0x239c30164ece1ac41e99d2c3ec91071215304e2f/) | VaultFlipToBanana | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x022c0a...213430`](./contracts/bsc-56/0x022c0a3685228fc9a5877685b7fc670c04213430/) | VaultFlipToCake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09fd83...21d389`](./contracts/bsc-56/0x09fd83e51f06b80934fe21dbe9be13671c21d389/) | VaultHunny | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x29db90...936a6f`](./contracts/bsc-56/0x29db90c10632d3de563d39012f2599b0c8936a6f/) | VaultHunnyMaximizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b9eed...da8045`](./contracts/bsc-56/0x1b9eed0fa5beecd36ebe7af3755f1c1361da8045/) | VaultStrategyAlpacaRabbit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10f8ca...e297f4`](./contracts/bsc-56/0x10f8ca4cf739f148276c2a5b434e8dce19e297f4/) | VaultStrategyAlpacaRabbitBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5c1c00...1303c2`](./contracts/bsc-56/0x5c1c00812948a6e9f0525a96ee6e5e67541303c2/) | VaultVenus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x33b218...b28afe`](./contracts/bsc-56/0x33b218fc65deceb02ae54bce5dd2e85c1db28afe/) | VaultVenusBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e0105...06eaf9`](./contracts/bsc-56/0x0e01053b4090489e8d4efd39fabcafbbe706eaf9/) | VaultVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
