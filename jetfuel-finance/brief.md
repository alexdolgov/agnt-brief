# Agentic Audit Brief: JetFuel Finance

## Project Overview

- Project: JetFuel Finance (`jetfuel-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:25.133Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 54 unique implementations (54 raw deployments)
- DeFi Llama TVL: $122,358.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 54 project-authored contract(s) across 1 chain(s); 22 ERC20 tokens, 1 ERC721 NFT; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 2 common project-authored base contract(s) (bep20, contractguard). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 54; live-surface contracts included: 54 (54 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/54 (0.0%)
- Deployed-live implementations: 54 of 54 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 54
- Raw deployments: 54
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

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BEP20Token | unknown | bsc | n/a | [`0xfb991a...d67ec7`](./contracts/bsc-56/0xfb991a9bcbafc9931eb78ca6816e388f90d67ec7/) | ⚠️ Unaudited |
| D100Presale | unknown | bsc | n/a | [`0x2a950c...7ec051`](./contracts/bsc-56/0x2a950cafa914d898cbf7a7daa71eebc73e7ec051/) | ⚠️ Unaudited |
| FortressIJO | unknown | bsc | n/a | [`0x2fc22a...e777d2`](./contracts/bsc-56/0x2fc22a43bb759cfa07fed29cf4b40d2508e777d2/) | ⚠️ Unaudited |
| FTSTimeLock | unknown | bsc | n/a | [`0x94222b...4783e8`](./contracts/bsc-56/0x94222bd8c1fc5ca4014fec75550aaced124783e8/) | ⚠️ Unaudited |
| FuelToken | unknown | bsc | n/a | [`0x2090c8...5e441a`](./contracts/bsc-56/0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a/) | ⚠️ Unaudited |
| GFCEPresale | unknown | bsc | n/a | [`0xcf2ef2...718874`](./contracts/bsc-56/0xcf2ef295115068bb4e4a37451210a97a02718874/) | ⚠️ Unaudited |
| GFORCE | unknown | bsc | n/a | [`0x94babb...1b26ce`](./contracts/bsc-56/0x94babbe728d9411612ee41b20241a6fa251b26ce/) | ⚠️ Unaudited |
| GFORCEv2 | unknown | bsc | n/a | [`0x5f1363...e64c66`](./contracts/bsc-56/0x5f136383e230f972739fae2e81e7e774afe64c66/) | ⚠️ Unaudited |
| HarvestMoonTicket | unknown | bsc | n/a | [`0x9c0287...ef5b8d`](./contracts/bsc-56/0x9c0287709e3c60bfccefdfbfccefdad57aef5b8d/) | ⚠️ Unaudited |
| IJO | unknown | bsc | n/a | [`0x0196f8...675ae2`](./contracts/bsc-56/0x0196f8e442006a35a89734de83fc04c0d6675ae2/) | ⚠️ Unaudited |
| JetBar | unknown | bsc | n/a | [`0xa3a3e1...475cfb`](./contracts/bsc-56/0xa3a3e10ceecd7ed81536a6c529bec1e4fb475cfb/) | ⚠️ Unaudited |
| JetfuelAutoVault | unknown | bsc | n/a | [`0x2d2112...d995dd`](./contracts/bsc-56/0x2d211236ccad202bc5548d0243d0e7819ed995dd/) | ⚠️ Unaudited |
| JetfuelAutoVaultv2 | unknown | bsc | n/a | [`0xa6b4c2...bdbb60`](./contracts/bsc-56/0xa6b4c20a45df1b47d15c66af601f5aa599bdbb60/) | ⚠️ Unaudited |
| JetfuelBSCEXVault | unknown | bsc | n/a | [`0x0a8ab9...997d8b`](./contracts/bsc-56/0x0a8ab9f4c04b62ba48d513b39f0ae0c3e6997d8b/) | ⚠️ Unaudited |
| JetfuelCakeBestVaultv2 | unknown | bsc | n/a | [`0x7c6d9e...bd4afa`](./contracts/bsc-56/0x7c6d9eef78b07fc13d6742b6473a4ffb1dbd4afa/) | ⚠️ Unaudited |
| JetfuelFortressVault | unknown | bsc | n/a | [`0x647db6...3e22d2`](./contracts/bsc-56/0x647db6dce3c36ac1a3ba48f0f6b767a6c73e22d2/) | ⚠️ Unaudited |
| JetfuelFortressVaultBNB | unknown | bsc | n/a | [`0x15e84d...753306`](./contracts/bsc-56/0x15e84d6ed8997590e02b25d3d3ceee9686753306/) | ⚠️ Unaudited |
| JetFuelNFT | unknown | bsc | n/a | [`0x462872...f899cb`](./contracts/bsc-56/0x4628726f2ae19282c55fc464ed0553170ff899cb/) | ⚠️ Unaudited |
| JetfuelVault | unknown | bsc | n/a | [`0x032bb9...20ecda`](./contracts/bsc-56/0x032bb900363be7a2fa566694a7f065f13820ecda/) | ⚠️ Unaudited |
| JetfuelVaultDittoBoost | unknown | bsc | n/a | [`0x3d6d41...73dc20`](./contracts/bsc-56/0x3d6d415be40159f207540f95e398f29a7173dc20/) | ⚠️ Unaudited |
| JetfuelVaultV2 | unknown | bsc | n/a | [`0x227f9a...cd2113`](./contracts/bsc-56/0x227f9a94815d3a30ef8ffb7302a1793d05cd2113/) | ⚠️ Unaudited |
| JetfuelVenusVault | unknown | bsc | n/a | [`0x937f23...e10f98`](./contracts/bsc-56/0x937f23ef476b6747b37f2125cbb257fc42e10f98/) | ⚠️ Unaudited |
| JetfuelVenusVaultBNB | unknown | bsc | n/a | [`0xc15bb3...e1cd89`](./contracts/bsc-56/0xc15bb35a1752a40be9d5090e784a896074e1cd89/) | ⚠️ Unaudited |
| JetfuelVenusVaultv2 | unknown | bsc | n/a | [`0x050015...1da25f`](./contracts/bsc-56/0x050015dedfd2b063a706c98bfa82b3c98b1da25f/) | ⚠️ Unaudited |
| JetFuelVIPNFT | unknown | bsc | n/a | [`0x8f2181...41bb28`](./contracts/bsc-56/0x8f218191da87e736c859f7c57922561c4641bb28/) | ⚠️ Unaudited |
| JetswapBar | unknown | bsc | n/a | [`0xd07947...d61b47`](./contracts/bsc-56/0xd079475f820bb3a01932083382aed733d3d61b47/) | ⚠️ Unaudited |
| JetswapFactory | unknown | bsc | n/a | [`0x0eb58e...dfcbd5`](./contracts/bsc-56/0x0eb58e5c8aa63314ff5547289185cc4583dfcbd5/) | ⚠️ Unaudited |
| JetswapRouter | unknown | bsc | n/a | [`0xbe65b8...714800`](./contracts/bsc-56/0xbe65b8f75b9f20f4c522e0067a3887fada714800/) | ⚠️ Unaudited |
| JetswapVault | unknown | bsc | n/a | [`0x06fd5c...c91b43`](./contracts/bsc-56/0x06fd5cab123990a0dd0ba2130bfa76da26c91b43/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x63d6ec...b6f9f5`](./contracts/bsc-56/0x63d6ec1cdef04464287e2af710ffef9780b6f9f5/) | ⚠️ Unaudited |
| MasterFuel | unknown | bsc | n/a | [`0x86f4bc...7d4b56`](./contracts/bsc-56/0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56/) | ⚠️ Unaudited |
| RewardPool | unknown | bsc | n/a | [`0x41aff2...bf2922`](./contracts/bsc-56/0x41aff2c6bdf200d205de307f597db738c0bf2922/) | ⚠️ Unaudited |
| SmartChef | unknown | bsc | n/a | [`0x013bc4...9dce60`](./contracts/bsc-56/0x013bc4281cca84c3c2fac7203c4d2859099dce60/) | ⚠️ Unaudited |
| SmartChefFactory | unknown | bsc | n/a | [`0x9c202a...d8ae1e`](./contracts/bsc-56/0x9c202a3bf2ed24c6667f607d62b1fabbfcd8ae1e/) | ⚠️ Unaudited |
| StrategyApe | unknown | bsc | n/a | [`0x3c975a...edf9b1`](./contracts/bsc-56/0x3c975a1f55d897cf7541693e732d6d474bedf9b1/) | ⚠️ Unaudited |
| StrategyApeLP | unknown | bsc | n/a | [`0xbfb7c6...871d96`](./contracts/bsc-56/0xbfb7c6dd4037285a387d021fdad9383a71871d96/) | ⚠️ Unaudited |
| StrategyAutoLP | unknown | bsc | n/a | [`0x408951...47fdb7`](./contracts/bsc-56/0x408951aa05906cda702e52139a027d29d247fdb7/) | ⚠️ Unaudited |
| StrategyAutoLPv2 | unknown | bsc | n/a | [`0x87b797...2352f1`](./contracts/bsc-56/0x87b7972453d03e344d4fdf8dd5bef6ca692352f1/) | ⚠️ Unaudited |
| StrategyAutoV2 | unknown | bsc | n/a | [`0x715067...4a944f`](./contracts/bsc-56/0x715067fb405dc42bb0a201c31748dc15c24a944f/) | ⚠️ Unaudited |
| StrategyBakeryLP | unknown | bsc | n/a | [`0x005892...db964b`](./contracts/bsc-56/0x00589273cfda2d74a0bee8cc7316919d52db964b/) | ⚠️ Unaudited |
| StrategyCakeBest | unknown | bsc | n/a | [`0x6d8f1f...49a0e9`](./contracts/bsc-56/0x6d8f1fd50f0ce0d93ded70ec2194e5a6bb49a0e9/) | ⚠️ Unaudited |
| StrategyCakeBestv2 | unknown | bsc | n/a | [`0xb8ceea...c8714c`](./contracts/bsc-56/0xb8ceea3951097a5efc46746aeafc339b28c8714c/) | ⚠️ Unaudited |
| StrategyCakeSmart | unknown | bsc | n/a | [`0x31a858...98f79a`](./contracts/bsc-56/0x31a85811322211f5f7b2405e5eb2b2567f98f79a/) | ⚠️ Unaudited |
| StrategyFortress | unknown | bsc | n/a | [`0xdc012e...964e1a`](./contracts/bsc-56/0xdc012ee194179ceb4f5431015148b0da1f964e1a/) | ⚠️ Unaudited |
| StrategyFortressBNB | unknown | bsc | n/a | [`0x58b8b3...8c506d`](./contracts/bsc-56/0x58b8b3430c70e76a33e91a6c942078b8f88c506d/) | ⚠️ Unaudited |
| StrategyJetfuelBSCEX | unknown | bsc | n/a | [`0x098daf...cd057c`](./contracts/bsc-56/0x098daf85bed3ad16a284c4c5f2b04e5d84cd057c/) | ⚠️ Unaudited |
| StrategyJetfuelLP | unknown | bsc | n/a | [`0x01588b...daf7fc`](./contracts/bsc-56/0x01588b79b8b9c5dfd4d7199a978c4404d5daf7fc/) | ⚠️ Unaudited |
| StrategyVenus | unknown | bsc | n/a | [`0x3b4ac8...de2a57`](./contracts/bsc-56/0x3b4ac854160d97da09a183559cc8441f30de2a57/) | ⚠️ Unaudited |
| StrategyVenusBNBV2 | unknown | bsc | n/a | [`0x956bce...7cdaa3`](./contracts/bsc-56/0x956bce4f086dc4579b960ed80336ef79737cdaa3/) | ⚠️ Unaudited |
| StrategyVenusv2 | unknown | bsc | n/a | [`0x3c0c0e...1014aa`](./contracts/bsc-56/0x3c0c0e0732ce790c4d30dbaa0a0eccb3c01014aa/) | ⚠️ Unaudited |
| StrategyWingsLP | unknown | bsc | n/a | [`0x0d9ab0...3eedb6`](./contracts/bsc-56/0x0d9ab0182a8004014dd22b7b6f614d07d13eedb6/) | ⚠️ Unaudited |
| StrategyWingsSingleVault | unknown | bsc | n/a | [`0xf150fd...24e06f`](./contracts/bsc-56/0xf150fd19a8f88668099eab23291162124f24e06f/) | ⚠️ Unaudited |
| TRYONPresale | unknown | bsc | n/a | [`0xb65be4...76e0bf`](./contracts/bsc-56/0xb65be412326e54811ff47f0130c0d8be0776e0bf/) | ⚠️ Unaudited |
| WingsToken | unknown | bsc | n/a | [`0x0487b8...498446`](./contracts/bsc-56/0x0487b824c8261462f88940f97053e65bdb498446/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xfb991a...d67ec7`](./contracts/bsc-56/0xfb991a9bcbafc9931eb78ca6816e388f90d67ec7/) | BEP20Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2a950c...7ec051`](./contracts/bsc-56/0x2a950cafa914d898cbf7a7daa71eebc73e7ec051/) | D100Presale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2fc22a...e777d2`](./contracts/bsc-56/0x2fc22a43bb759cfa07fed29cf4b40d2508e777d2/) | FortressIJO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x94222b...4783e8`](./contracts/bsc-56/0x94222bd8c1fc5ca4014fec75550aaced124783e8/) | FTSTimeLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2090c8...5e441a`](./contracts/bsc-56/0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a/) | FuelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcf2ef2...718874`](./contracts/bsc-56/0xcf2ef295115068bb4e4a37451210a97a02718874/) | GFCEPresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x94babb...1b26ce`](./contracts/bsc-56/0x94babbe728d9411612ee41b20241a6fa251b26ce/) | GFORCE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5f1363...e64c66`](./contracts/bsc-56/0x5f136383e230f972739fae2e81e7e774afe64c66/) | GFORCEv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9c0287...ef5b8d`](./contracts/bsc-56/0x9c0287709e3c60bfccefdfbfccefdad57aef5b8d/) | HarvestMoonTicket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0196f8...675ae2`](./contracts/bsc-56/0x0196f8e442006a35a89734de83fc04c0d6675ae2/) | IJO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa3a3e1...475cfb`](./contracts/bsc-56/0xa3a3e10ceecd7ed81536a6c529bec1e4fb475cfb/) | JetBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2d2112...d995dd`](./contracts/bsc-56/0x2d211236ccad202bc5548d0243d0e7819ed995dd/) | JetfuelAutoVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa6b4c2...bdbb60`](./contracts/bsc-56/0xa6b4c20a45df1b47d15c66af601f5aa599bdbb60/) | JetfuelAutoVaultv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a8ab9...997d8b`](./contracts/bsc-56/0x0a8ab9f4c04b62ba48d513b39f0ae0c3e6997d8b/) | JetfuelBSCEXVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c6d9e...bd4afa`](./contracts/bsc-56/0x7c6d9eef78b07fc13d6742b6473a4ffb1dbd4afa/) | JetfuelCakeBestVaultv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x647db6...3e22d2`](./contracts/bsc-56/0x647db6dce3c36ac1a3ba48f0f6b767a6c73e22d2/) | JetfuelFortressVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x15e84d...753306`](./contracts/bsc-56/0x15e84d6ed8997590e02b25d3d3ceee9686753306/) | JetfuelFortressVaultBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x462872...f899cb`](./contracts/bsc-56/0x4628726f2ae19282c55fc464ed0553170ff899cb/) | JetFuelNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x032bb9...20ecda`](./contracts/bsc-56/0x032bb900363be7a2fa566694a7f065f13820ecda/) | JetfuelVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3d6d41...73dc20`](./contracts/bsc-56/0x3d6d415be40159f207540f95e398f29a7173dc20/) | JetfuelVaultDittoBoost | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x227f9a...cd2113`](./contracts/bsc-56/0x227f9a94815d3a30ef8ffb7302a1793d05cd2113/) | JetfuelVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x937f23...e10f98`](./contracts/bsc-56/0x937f23ef476b6747b37f2125cbb257fc42e10f98/) | JetfuelVenusVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc15bb3...e1cd89`](./contracts/bsc-56/0xc15bb35a1752a40be9d5090e784a896074e1cd89/) | JetfuelVenusVaultBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x050015...1da25f`](./contracts/bsc-56/0x050015dedfd2b063a706c98bfa82b3c98b1da25f/) | JetfuelVenusVaultv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8f2181...41bb28`](./contracts/bsc-56/0x8f218191da87e736c859f7c57922561c4641bb28/) | JetFuelVIPNFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd07947...d61b47`](./contracts/bsc-56/0xd079475f820bb3a01932083382aed733d3d61b47/) | JetswapBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eb58e...dfcbd5`](./contracts/bsc-56/0x0eb58e5c8aa63314ff5547289185cc4583dfcbd5/) | JetswapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbe65b8...714800`](./contracts/bsc-56/0xbe65b8f75b9f20f4c522e0067a3887fada714800/) | JetswapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x06fd5c...c91b43`](./contracts/bsc-56/0x06fd5cab123990a0dd0ba2130bfa76da26c91b43/) | JetswapVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x63d6ec...b6f9f5`](./contracts/bsc-56/0x63d6ec1cdef04464287e2af710ffef9780b6f9f5/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x86f4bc...7d4b56`](./contracts/bsc-56/0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56/) | MasterFuel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x41aff2...bf2922`](./contracts/bsc-56/0x41aff2c6bdf200d205de307f597db738c0bf2922/) | RewardPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x013bc4...9dce60`](./contracts/bsc-56/0x013bc4281cca84c3c2fac7203c4d2859099dce60/) | SmartChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9c202a...d8ae1e`](./contracts/bsc-56/0x9c202a3bf2ed24c6667f607d62b1fabbfcd8ae1e/) | SmartChefFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3c975a...edf9b1`](./contracts/bsc-56/0x3c975a1f55d897cf7541693e732d6d474bedf9b1/) | StrategyApe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbfb7c6...871d96`](./contracts/bsc-56/0xbfb7c6dd4037285a387d021fdad9383a71871d96/) | StrategyApeLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x408951...47fdb7`](./contracts/bsc-56/0x408951aa05906cda702e52139a027d29d247fdb7/) | StrategyAutoLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x87b797...2352f1`](./contracts/bsc-56/0x87b7972453d03e344d4fdf8dd5bef6ca692352f1/) | StrategyAutoLPv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x715067...4a944f`](./contracts/bsc-56/0x715067fb405dc42bb0a201c31748dc15c24a944f/) | StrategyAutoV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x005892...db964b`](./contracts/bsc-56/0x00589273cfda2d74a0bee8cc7316919d52db964b/) | StrategyBakeryLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6d8f1f...49a0e9`](./contracts/bsc-56/0x6d8f1fd50f0ce0d93ded70ec2194e5a6bb49a0e9/) | StrategyCakeBest | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb8ceea...c8714c`](./contracts/bsc-56/0xb8ceea3951097a5efc46746aeafc339b28c8714c/) | StrategyCakeBestv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x31a858...98f79a`](./contracts/bsc-56/0x31a85811322211f5f7b2405e5eb2b2567f98f79a/) | StrategyCakeSmart | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xdc012e...964e1a`](./contracts/bsc-56/0xdc012ee194179ceb4f5431015148b0da1f964e1a/) | StrategyFortress | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x58b8b3...8c506d`](./contracts/bsc-56/0x58b8b3430c70e76a33e91a6c942078b8f88c506d/) | StrategyFortressBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x098daf...cd057c`](./contracts/bsc-56/0x098daf85bed3ad16a284c4c5f2b04e5d84cd057c/) | StrategyJetfuelBSCEX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01588b...daf7fc`](./contracts/bsc-56/0x01588b79b8b9c5dfd4d7199a978c4404d5daf7fc/) | StrategyJetfuelLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b4ac8...de2a57`](./contracts/bsc-56/0x3b4ac854160d97da09a183559cc8441f30de2a57/) | StrategyVenus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x956bce...7cdaa3`](./contracts/bsc-56/0x956bce4f086dc4579b960ed80336ef79737cdaa3/) | StrategyVenusBNBV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3c0c0e...1014aa`](./contracts/bsc-56/0x3c0c0e0732ce790c4d30dbaa0a0eccb3c01014aa/) | StrategyVenusv2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0d9ab0...3eedb6`](./contracts/bsc-56/0x0d9ab0182a8004014dd22b7b6f614d07d13eedb6/) | StrategyWingsLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf150fd...24e06f`](./contracts/bsc-56/0xf150fd19a8f88668099eab23291162124f24e06f/) | StrategyWingsSingleVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb65be4...76e0bf`](./contracts/bsc-56/0xb65be412326e54811ff47f0130c0d8be0776e0bf/) | TRYONPresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0487b8...498446`](./contracts/bsc-56/0x0487b824c8261462f88940f97053e65bdb498446/) | WingsToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 54 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
