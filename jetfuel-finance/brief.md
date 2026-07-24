# Agentic Audit Brief: JetFuel Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: JetFuel Finance (`jetfuel-finance`)
- Website: [https://jetfuel.finance/](https://jetfuel.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 271 unique implementations (271 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $122,358.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for JetFuel Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: ownable (3), erc20 (2)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 3; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 267 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/54
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 217
- Unique implementations: 271
- Raw deployments: 271
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BEP20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb991a9bcbafc9931eb78ca6816e388f90d67ec7` | ⚠️ Unaudited |
| D100Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a950cafa914d898cbf7a7daa71eebc73e7ec051` | ⚠️ Unaudited |
| FortressIJO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2fc22a43bb759cfa07fed29cf4b40d2508e777d2` | ⚠️ Unaudited |
| FTSTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94222bd8c1fc5ca4014fec75550aaced124783e8` | ⚠️ Unaudited |
| FuelToken | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-243298 | `0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a` | ⚠️ Unaudited |
| GFCEPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf2ef295115068bb4e4a37451210a97a02718874` | ⚠️ Unaudited |
| GFORCE | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-243300 | `0x94babbe728d9411612ee41b20241a6fa251b26ce` | ⚠️ Unaudited |
| GFORCEv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f136383e230f972739fae2e81e7e774afe64c66` | ⚠️ Unaudited |
| HarvestMoonTicket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c0287709e3c60bfccefdfbfccefdad57aef5b8d` | ⚠️ Unaudited |
| IJO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0196f8e442006a35a89734de83fc04c0d6675ae2` | ⚠️ Unaudited |
| JetBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3a3e10ceecd7ed81536a6c529bec1e4fb475cfb` | ⚠️ Unaudited |
| JetfuelAutoVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d211236ccad202bc5548d0243d0e7819ed995dd` | ⚠️ Unaudited |
| JetfuelAutoVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6b4c20a45df1b47d15c66af601f5aa599bdbb60` | ⚠️ Unaudited |
| JetfuelBSCEXVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a8ab9f4c04b62ba48d513b39f0ae0c3e6997d8b` | ⚠️ Unaudited |
| JetfuelCakeBestVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c6d9eef78b07fc13d6742b6473a4ffb1dbd4afa` | ⚠️ Unaudited |
| JetfuelFortressVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x647db6dce3c36ac1a3ba48f0f6b767a6c73e22d2` | ⚠️ Unaudited |
| JetfuelFortressVaultBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15e84d6ed8997590e02b25d3d3ceee9686753306` | ⚠️ Unaudited |
| JetFuelNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4628726f2ae19282c55fc464ed0553170ff899cb` | ⚠️ Unaudited |
| JetfuelVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x032bb900363be7a2fa566694a7f065f13820ecda` | ⚠️ Unaudited |
| JetfuelVaultDittoBoost | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d6d415be40159f207540f95e398f29a7173dc20` | ⚠️ Unaudited |
| JetfuelVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x227f9a94815d3a30ef8ffb7302a1793d05cd2113` | ⚠️ Unaudited |
| JetfuelVenusVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x937f23ef476b6747b37f2125cbb257fc42e10f98` | ⚠️ Unaudited |
| JetfuelVenusVaultBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc15bb35a1752a40be9d5090e784a896074e1cd89` | ⚠️ Unaudited |
| JetfuelVenusVaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x050015dedfd2b063a706c98bfa82b3c98b1da25f` | ⚠️ Unaudited |
| JetFuelVIPNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f218191da87e736c859f7c57922561c4641bb28` | ⚠️ Unaudited |
| JetswapBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd079475f820bb3a01932083382aed733d3d61b47` | ⚠️ Unaudited |
| JetswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0eb58e5c8aa63314ff5547289185cc4583dfcbd5` | ⚠️ Unaudited |
| JetswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe65b8f75b9f20f4c522e0067a3887fada714800` | ⚠️ Unaudited |
| JetswapVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06fd5cab123990a0dd0ba2130bfa76da26c91b43` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63d6ec1cdef04464287e2af710ffef9780b6f9f5` | ⚠️ Unaudited |
| MasterFuel | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-243299 | `0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56` | ⚠️ Unaudited |
| RewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41aff2c6bdf200d205de307f597db738c0bf2922` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x013bc4281cca84c3c2fac7203c4d2859099dce60` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c202a3bf2ed24c6667f607d62b1fabbfcd8ae1e` | ⚠️ Unaudited |
| StrategyApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c975a1f55d897cf7541693e732d6d474bedf9b1` | ⚠️ Unaudited |
| StrategyApeLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfb7c6dd4037285a387d021fdad9383a71871d96` | ⚠️ Unaudited |
| StrategyAutoLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x408951aa05906cda702e52139a027d29d247fdb7` | ⚠️ Unaudited |
| StrategyAutoLPv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87b7972453d03e344d4fdf8dd5bef6ca692352f1` | ⚠️ Unaudited |
| StrategyAutoV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x715067fb405dc42bb0a201c31748dc15c24a944f` | ⚠️ Unaudited |
| StrategyBakeryLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00589273cfda2d74a0bee8cc7316919d52db964b` | ⚠️ Unaudited |
| StrategyCakeBest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d8f1fd50f0ce0d93ded70ec2194e5a6bb49a0e9` | ⚠️ Unaudited |
| StrategyCakeBestv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8ceea3951097a5efc46746aeafc339b28c8714c` | ⚠️ Unaudited |
| StrategyCakeSmart | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31a85811322211f5f7b2405e5eb2b2567f98f79a` | ⚠️ Unaudited |
| StrategyFortress | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc012ee194179ceb4f5431015148b0da1f964e1a` | ⚠️ Unaudited |
| StrategyFortressBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58b8b3430c70e76a33e91a6c942078b8f88c506d` | ⚠️ Unaudited |
| StrategyJetfuelBSCEX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x098daf85bed3ad16a284c4c5f2b04e5d84cd057c` | ⚠️ Unaudited |
| StrategyJetfuelLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01588b79b8b9c5dfd4d7199a978c4404d5daf7fc` | ⚠️ Unaudited |
| StrategyVenus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b4ac854160d97da09a183559cc8441f30de2a57` | ⚠️ Unaudited |
| StrategyVenusBNBV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x956bce4f086dc4579b960ed80336ef79737cdaa3` | ⚠️ Unaudited |
| StrategyVenusv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c0c0e0732ce790c4d30dbaa0a0eccb3c01014aa` | ⚠️ Unaudited |
| StrategyWingsLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d9ab0182a8004014dd22b7b6f614d07d13eedb6` | ⚠️ Unaudited |
| StrategyWingsSingleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf150fd19a8f88668099eab23291162124f24e06f` | ⚠️ Unaudited |
| TRYONPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb65be412326e54811ff47f0130c0d8be0776e0bf` | ⚠️ Unaudited |
| WingsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0487b824c8261462f88940f97053e65bdb498446` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (217)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0350efc06dc9ab70f49da99ee46274031dd6c122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04659c73819887446eb27d9c01732c9e3a5647c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x053391821dd9633e5aa64ece38aa471df77e9426` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07134cef77f80ed45bc6c3da0f658639cef7e4ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x071b5b7029411483bc9b8e1e873dd1623b614208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e290bb18a5d90c84b7a5c0ed01b7c9c108ab79c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f22fde83f24a50fd677dc7707bedeac749ed5ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f65639de6a3285191b8e308fcc0dec734ad75fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11bbb1277a32d58f73a68380aaea70c3371dbe0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x151395a29fc24d6e114aa13f3357e931f39428c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x182b9f1ee9f9d9af5371153fd73c70a9d0fbf8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x184ba48939c49f54b0aa31f76177eba40130b7ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a567e5d28584fe20d41a8ad2d7271afbe014b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ac0193a6a4691b832ce3b299cad934988af9c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ae8f478571e7bc7cac067a8fcd298749be722ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d149c549a88035334b9829fed0172641e2a50ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d6543b57fe973a09ceebf6e6872de0aa6c04377` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1df7b5df1b29a850d642dd989f2b9664a56596c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e3c2717cdce6489b6c96b64de25aff972d3f72c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ffc0e4504788f11e6f012c24ca63507b0a9d2a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2240cbebd9e04ff31c516a623d3aa802096126d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x229e084e2c88a09aa04eedbf93c3d728d06dae58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x229eedaca481a673cd7f318dffd35489fdb3c888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24bb788b3631d833642fd177d6774428be5a63ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24ebdb0e354c36f50979ba68c13eca9f59151ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x290fb3bd38d636dd26a63c972a2fc43aa58ec0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29c12b9ce7df205c944725520718d10aafa78433` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b66426a019e43e9e025c62278076a38c6cb33c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cb360a4d2d080cec904c80e88bf87125cc2a970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e93e5b4c8b4f0dae62b1769a773168416993995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30c7fb75ffc22a2dc1b0ecbe2bdf69c7b6b619c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3245c349acf3aa0370825a69a6d8ee6b700fc629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32d7e319bdafe2ae7d654d2157f43aa457ad19bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33c5fbe4772aba8235f62010c72857039db0ef18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3468348d60429b5a735940a84dc5762f0c5f4b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35a07398be19b4ee113ba858e8bf5bb538f26250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3685ce07f83807c9e4fc3a604129a039fbebe6de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x369fe670d19f549f077a71534ca6bd7d49ab0d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37c621f117d02ac6f873b5089a6cbbb5927b797f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x394639fca6eeb4279bef71cbd9b7c988a211eaff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a795a0c7ba98d965982c6150977258ef9197225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3aa4bc2820c238e843a7397fa7d5b3c944facd93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ceea4753071083e3ed9dbf674d6f42945e0c1ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d8f1accee8e263f837138829b6c4517473d0688` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3de32fe1dc3fda78a9bcc14fe10f3924b6891122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e703bde370fae75c08b90815e342c7aa578208c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40fa8abe4150b6d9d3d6cc16ec7a4f5503dae662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4149531aed145a15ccc361c469b0c79fe26b4f1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41c8f17e7ff23ea16b253612f33018184172ac67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4225281fdaffab7d943dffbf7ca29ebb34539d3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x444e4d45bf63cf9c0c99fc0e702e1815d12c2c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4477a12e4b16e14c17dca58fc2950b4715dc1fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44d0e3db6924ae650c09927d823a694a7ef6a92b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4529b618bc77a6291f08744b9f095bd9408cddfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4553a0b1a82690ab3a58604ddd7cf7f1a9dd04aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x458cbacd6bafe37cf5079915fd7ff44980b2979a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x465a5e8501bf38898a8aead87f0d864adcc826a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x467d28dfcd3207034a2c03cc9bf4de0a1bd7e11d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47d8d83f7fb66855be4fe3bc3517f0ed29b55d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47e2b224e0b8bb05d144d156e5ed3986280a6b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47f0bf62b067177d80a8e775e811d7762ec5f2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4acfae59193976ee1b02020730c9b0c47360c79c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ad9a2aba8155a3c4d9148d8db3212926f901afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c3b71f7233df55c7a865544107a4d9c694c2107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c972be9fce2a654a912026c244d8edfa7270148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e52ae85329474ec9e2469bdd1d0491ea2c41254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e6aabb2850f948f9b2e4b2634f6747bb8ef8ec9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f86643416395db376569fa4f09aee29ea1d4ac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f917267c7790e362f1b5d14ab397a920486e9ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x512c99ffd331ddaa9a7886b3fb7fd51a0d5ba005` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51457145187e3b6dedcd10808f1a49efc08b31dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5725356da7f05322148f19fd10f89e846048d1f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a7e0fea9e20e2298ec69444718f637c41a1a352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d9ebde919f6ee1a37263ee9d7bbdc5821707ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f07c5ce9b6756b91e31365dfb2f1ca20558787d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x600b2f2a9b85d8c1b1b46a769a9e3022a9fe6b06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6116b3f0c6608dda66e5f39fb09176b3ebda7741` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63f04fa44e5df591fbc093ca4a72b45e7809e392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x664a48bd82cc1912c502b4418305d8216139d168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66ab4010407712fcadb95e9003d60d72a645b93d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x680403f3e305e80ee996ae899fafec4ac48a6d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x684b86319c9c6a78b7f87675e8120a96f53b0c7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69b30f5d9dc7503aa4c2c1cab78a5e2d7872940c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b9040ef98aa616f19321d2edf33ea82c6263aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6ba6c5aa9b3b24bb786e31adb4ae36397678a64b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c9147392dce94b22496634248cc4d74b41f475d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e388722e72bdda97abc41c8d6a4f8016da726a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70ed4836e746547fb0e910ace95fa545cb9d8a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x733ea2617e29d90c9f3da6389387f960cd4ac038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x741587e173b4a192f247e4b0756e84ba6bca71d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7421fd69261844536e0814c3b5cb44c560035908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x755aac39603599d2a10c407c3d06dee96999ae90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7586788d5d4221a6554eff01203cbb4f4fa4e730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7603b766c9398624dc714cd3326618019963ecab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x760ab54119a06504e5ac12f5fd80bd8318b06db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x761a6031e6c0c683116a8efd28b86a6f3122a39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76b7dc95ad02a03304ab91f5539a14457fcc9035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76fe142b05ff6afbc10b56c7fd8aec3030a7d973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x781d39bbb45f17726e6bd957e7e716f0871252e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ac6832e4ad2105ae4888d8bf93636f377830be9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b9ec0d578230f252f332b8b2c632f4467f7c2b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c31e43f2431c1c94b69a8719540a6bb2da87bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c33977171739fbfdb6571512baf257e6f4771f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cf9601735c80e7b7deb2508163328df59653353` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dc4c71c3df0732d18ac2bb8a3891ae55a9977e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f2e9e374e97f171c9ed3e0910111b15b9045644` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8022376125c31d4d205608736c924154dbbbb30f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x804ef864d199e28c1f48d179faeb53683b671875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81369235c726dfe3f9ea8bb5f0b84e08f72891b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x845e76a8691423fbc4ecb8dd77556cb61c09ee25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8637712c73bb65737767c8d17c151d3efac892bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87af253a602f4f1373f0c8285d1b7496f2ad6898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8825a44182b94641f9299c32ef44d21235563ef7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88c30c134a980e2314edbc622a2418a2dfa69d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x890ce0e68515d5e1e5eb76300a5f62caf891731b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x897420993b0ba1adc4ed14c5989fa6d97fcc4210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d46b4d4cab15156462f5cec509010fb00c26527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f68cd2560a90712013d00b453e579772810b3ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8fee5a066ac1c0b662eaec26fc7b62878410d772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9180583c1ab03587b545629dd60d2be0bf1df4f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92958982aca653d9ab19b65295e09b26a569509e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94c25380950c606a30d6390ce1755d7d9670b63a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x964505cb24ecee087db5b5626b4e3fff694c718e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x971340ac93bae18351b59ead692430e717085e0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9766af3ca0897b465bfba700330c5e1e527bfecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x980edec0a2a62e3d396a1a60ee8101f5116de316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98768a65174fbf9d19a138529e0779381b5ec566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98c2d69af130d66dd59602c84c6fe40d11638ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98cf774f3dd86a7bec58174e426c3fb35a75e800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9933cfa1a85039f32c61a5d4993b55268b2584d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99c65a010c8b4e0a3d7071dd21f9d37b53830ad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99cc3060487fa635cfd9bcff69417d225b3f0104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c760c38646681be20d7f45b8a9d10e0ccc96224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e24f0d899795b94c9b6ce8134f8c3e8f79ed37f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa10983a758dbd8998215db48b44a0ada77c5f7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1a441966e48360d12dc887eb24e5f7c8035fd4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa22dbba46780ff55eba4662393d9a17568f2e0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2b7bef45ca795ffae4ec5197e86492d2f7d86a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa45e5a2258c8124ce11165eebf85991d47dc1703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6d55074b038a082748c88d9c3e56821c44474ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8391bcec6e011596eb27add45a2e58f47cf40fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa863019030f9020009bbb331ee5e8af0882e5cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9190fbe894a386388b560df6fe9185aa8aa018d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa93a93f76bc96b8dfa43e93e0b3528e7f59ff690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab32f72c550901031557cfa3d74224111a774254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad74c817ca4b1c302bae6fcdfa743709e07cbae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae11408c036fced4c03cd46915daeb573357c63b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaef5365b8868a5766e42df5c095c61dc6013c946` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf15987c889296f6f597affd382f695e88e83666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb09bf4bbf08425d9c46ed82df3c45a14c316ddb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb787b2c4c66e16c0d14adde6856f2788533d140d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb976c32dad2daf02fa91cb219f93ae62cea3477a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb566aa4255e4a7f0660f3b9ca80632bdcf9b1ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd686a8cdf1fdc223ff89c78ba3f5f1098b991ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf04f7fde6e98ed0edb3014753d6c2517bc26e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf964f5518ffdf499047947ae3fdb209db4e42cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfbc24bcca99ee7a332495fe203a06b759849746` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbfbea46ecd61ee1f7d5d1e765e2548eda0d25819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1eed5d6cf082fa9f370839330d96e9d0db03340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc344a33ac93023a18d75bdce967f9d46f50a7f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc3d6d27ff4f607c803fd31cc31bbdcdd116773d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc46ccf3fbc5a28f1ac4a37f0522d49275b698b40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4f157f1f0cadf70b9687d5eaf90deedea901b31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc528fcbf46457cf08e6bd34346e79e9385fef902` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc573b7e6e7d31ab2a9a1e64d0a7969495b2169ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc828ae3f0b0c7ca45ef1f6f81fc9dff6b3aea8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8be300cc14ce7b611d2c7d72bcbf2e530a063f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc92d3399f664c43cf0569e9b6b93019b0eafa88b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb225352d8d3b0c70e805c4e89aa1e4414ca87d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcce0248e307edb891ea9f0ee5cdef7c12cc76c61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd9921e21c1796255b7d6f055eed832f7c1dc01c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf2f2c16f2cc5b36d85f2c2c062aebf04f60a8fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd02cc0a97dcf693c55865a56609d6b196a2466b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0b1dc1b39a730d634902c01c61316a97afa31b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd13bbda5061c99f770b675e2e0b1380b332fe227` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd197f91e2fc06456a0614dd2162c039920fcc776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1c249dc749e6458813da36a3de0bb4a75cd3104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd31c245ab7aa92b16bfd061c148a2d10b49b53ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd43ccd89278d9f5a1ab38117f13618f63344b705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4d4c2e8d4297d8a28693bb2f3a89989e524d3a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd76eaf7ea4dd631ebf3e4269086df9d0b024f5a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8d9ee1ef6578becc9ce5be30bd2a983454bcd2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd962d17807693b1cd32ec76d811f1dc8e184f3c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbb07d6252795de1e9812ef0a746a7d1bf1c7e26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbfc4ce183eda7675882df62fa833583bba67656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdca31a4d1ca28080b0b6a02dead39aaa602caf8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcc5953161d3872f96a560b496419a597231444b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd59204d413f2cd5477287a4a4a4ae572240bdf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe08677a821259171dfabc5ccbbeb5bd94b03ae8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe10b18b4b4f09bb6b2f2ad23297a8d0f79157470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2859c4e50bbd88bdeb4988869bfde3d78fe14fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe28a6de3135b2c29f27ed71a783c7f7476e79739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2f6e2b039073f3b2d21323612c5160e458b7e9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4647bb421e81491529fe204eb7f442d025a6e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4a3ede011d13d1b24c0670952f9145cc56bfae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4e38e2bc5adda3b93790f31e146212672afb6ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe545721e35ad2cd9f1616b22509de643eb0de789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe694672049674f93016c81fb7a92852549e099bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe79c3e42ade3005b1791a41af386ebe06a98359b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe7b83b7c91520a5c11b61b5ee68173e30ca54354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeaa8234d9bf8dfc6c8c24d3d24be3cad256450ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeaf7f40ee3d2b0a1ae88781a2d5cd3dfbb159f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec4b9185e61101ceb91fa70e99419d4beb57130c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec57bf1ed0a2297a3e3911bf6fa389aa2c112a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed2097330741ac6aa574c0eda26a7ad41c976fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed9f4f3123d0cf74bb243ea5f4f1667b2a88665d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedc54a3f2effba3b446ed7d08fcedd6a8e0540a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedd78f7e9f423cb75b0afc4c9d681a8cd92b154c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0674c8da9fe50907230f7e6ce4fde6901456cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2178d0768b92164c4588a2ba12f64238eaecead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2f11389ce9cf23c37b03131df914772ba17e664` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4a7c7be33cf17a35d59e91414a826edb653af8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf4b99820fb97e67003973be5461cae7a9f592158` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xf6488205957f0b4497053d6422f49e27944ee3dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6fdba39344f72b57edcd4e9eaa83caf765140d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf98fff7bade336f84bec835a4a1f2a9b7fe7446b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc8c3aecf046eb1e7423ac5b94ecff1776ab7483` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 216
- Live contracts: 0
- Unknown liveness contracts: 216
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=216

Showing first 200 of 216 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x0350efc06dc9ab70f49da99ee46274031dd6c122` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x04659c73819887446eb27d9c01732c9e3a5647c9` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x053391821dd9633e5aa64ece38aa471df77e9426` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x07134cef77f80ed45bc6c3da0f658639cef7e4ac` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x071b5b7029411483bc9b8e1e873dd1623b614208` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0e290bb18a5d90c84b7a5c0ed01b7c9c108ab79c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0f22fde83f24a50fd677dc7707bedeac749ed5ec` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0f65639de6a3285191b8e308fcc0dec734ad75fd` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x11bbb1277a32d58f73a68380aaea70c3371dbe0a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x151395a29fc24d6e114aa13f3357e931f39428c8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x182b9f1ee9f9d9af5371153fd73c70a9d0fbf8da` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x184ba48939c49f54b0aa31f76177eba40130b7ba` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1a567e5d28584fe20d41a8ad2d7271afbe014b4a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1ac0193a6a4691b832ce3b299cad934988af9c32` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1ae8f478571e7bc7cac067a8fcd298749be722ae` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1d149c549a88035334b9829fed0172641e2a50ec` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1d6543b57fe973a09ceebf6e6872de0aa6c04377` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1df7b5df1b29a850d642dd989f2b9664a56596c0` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1e3c2717cdce6489b6c96b64de25aff972d3f72c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1ffc0e4504788f11e6f012c24ca63507b0a9d2a8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2240cbebd9e04ff31c516a623d3aa802096126d9` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x229e084e2c88a09aa04eedbf93c3d728d06dae58` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x229eedaca481a673cd7f318dffd35489fdb3c888` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x24bb788b3631d833642fd177d6774428be5a63ce` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x24ebdb0e354c36f50979ba68c13eca9f59151ac4` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x290fb3bd38d636dd26a63c972a2fc43aa58ec0d6` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x29c12b9ce7df205c944725520718d10aafa78433` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2b66426a019e43e9e025c62278076a38c6cb33c3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2cb360a4d2d080cec904c80e88bf87125cc2a970` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2e93e5b4c8b4f0dae62b1769a773168416993995` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30c7fb75ffc22a2dc1b0ecbe2bdf69c7b6b619c2` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3245c349acf3aa0370825a69a6d8ee6b700fc629` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x32d7e319bdafe2ae7d654d2157f43aa457ad19bb` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x33c5fbe4772aba8235f62010c72857039db0ef18` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3468348d60429b5a735940a84dc5762f0c5f4b08` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x35a07398be19b4ee113ba858e8bf5bb538f26250` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3685ce07f83807c9e4fc3a604129a039fbebe6de` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x369fe670d19f549f077a71534ca6bd7d49ab0d09` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x37c621f117d02ac6f873b5089a6cbbb5927b797f` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x394639fca6eeb4279bef71cbd9b7c988a211eaff` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3a795a0c7ba98d965982c6150977258ef9197225` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3aa4bc2820c238e843a7397fa7d5b3c944facd93` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3ceea4753071083e3ed9dbf674d6f42945e0c1ec` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d8f1accee8e263f837138829b6c4517473d0688` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3de32fe1dc3fda78a9bcc14fe10f3924b6891122` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3e703bde370fae75c08b90815e342c7aa578208c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x40fa8abe4150b6d9d3d6cc16ec7a4f5503dae662` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4149531aed145a15ccc361c469b0c79fe26b4f1c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x41c8f17e7ff23ea16b253612f33018184172ac67` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4225281fdaffab7d943dffbf7ca29ebb34539d3b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x444e4d45bf63cf9c0c99fc0e702e1815d12c2c9a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4477a12e4b16e14c17dca58fc2950b4715dc1fbe` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44d0e3db6924ae650c09927d823a694a7ef6a92b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4529b618bc77a6291f08744b9f095bd9408cddfd` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4553a0b1a82690ab3a58604ddd7cf7f1a9dd04aa` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x458cbacd6bafe37cf5079915fd7ff44980b2979a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x465a5e8501bf38898a8aead87f0d864adcc826a4` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x467d28dfcd3207034a2c03cc9bf4de0a1bd7e11d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47d8d83f7fb66855be4fe3bc3517f0ed29b55d70` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47e2b224e0b8bb05d144d156e5ed3986280a6b40` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47f0bf62b067177d80a8e775e811d7762ec5f2e6` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4acfae59193976ee1b02020730c9b0c47360c79c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4ad9a2aba8155a3c4d9148d8db3212926f901afa` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4c3b71f7233df55c7a865544107a4d9c694c2107` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4c972be9fce2a654a912026c244d8edfa7270148` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4e52ae85329474ec9e2469bdd1d0491ea2c41254` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4e6aabb2850f948f9b2e4b2634f6747bb8ef8ec9` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4f86643416395db376569fa4f09aee29ea1d4ac9` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4f917267c7790e362f1b5d14ab397a920486e9ff` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x512c99ffd331ddaa9a7886b3fb7fd51a0d5ba005` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x51457145187e3b6dedcd10808f1a49efc08b31dc` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5725356da7f05322148f19fd10f89e846048d1f3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5a7e0fea9e20e2298ec69444718f637c41a1a352` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5d9ebde919f6ee1a37263ee9d7bbdc5821707ad8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5f07c5ce9b6756b91e31365dfb2f1ca20558787d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x600b2f2a9b85d8c1b1b46a769a9e3022a9fe6b06` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6116b3f0c6608dda66e5f39fb09176b3ebda7741` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x63f04fa44e5df591fbc093ca4a72b45e7809e392` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x664a48bd82cc1912c502b4418305d8216139d168` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x66ab4010407712fcadb95e9003d60d72a645b93d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x680403f3e305e80ee996ae899fafec4ac48a6d52` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x684b86319c9c6a78b7f87675e8120a96f53b0c7d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x69b30f5d9dc7503aa4c2c1cab78a5e2d7872940c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b9040ef98aa616f19321d2edf33ea82c6263aaf` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6ba6c5aa9b3b24bb786e31adb4ae36397678a64b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6c9147392dce94b22496634248cc4d74b41f475d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e388722e72bdda97abc41c8d6a4f8016da726a0` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x70ed4836e746547fb0e910ace95fa545cb9d8a30` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x733ea2617e29d90c9f3da6389387f960cd4ac038` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x741587e173b4a192f247e4b0756e84ba6bca71d4` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7421fd69261844536e0814c3b5cb44c560035908` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x755aac39603599d2a10c407c3d06dee96999ae90` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7586788d5d4221a6554eff01203cbb4f4fa4e730` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7603b766c9398624dc714cd3326618019963ecab` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x760ab54119a06504e5ac12f5fd80bd8318b06db2` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x761a6031e6c0c683116a8efd28b86a6f3122a39e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x76b7dc95ad02a03304ab91f5539a14457fcc9035` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x76fe142b05ff6afbc10b56c7fd8aec3030a7d973` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x781d39bbb45f17726e6bd957e7e716f0871252e3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7ac6832e4ad2105ae4888d8bf93636f377830be9` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7b9ec0d578230f252f332b8b2c632f4467f7c2b8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7c31e43f2431c1c94b69a8719540a6bb2da87bb7` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7c33977171739fbfdb6571512baf257e6f4771f4` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7cf9601735c80e7b7deb2508163328df59653353` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7dc4c71c3df0732d18ac2bb8a3891ae55a9977e5` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7f2e9e374e97f171c9ed3e0910111b15b9045644` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8022376125c31d4d205608736c924154dbbbb30f` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x804ef864d199e28c1f48d179faeb53683b671875` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x81369235c726dfe3f9ea8bb5f0b84e08f72891b8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x845e76a8691423fbc4ecb8dd77556cb61c09ee25` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8637712c73bb65737767c8d17c151d3efac892bd` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x87af253a602f4f1373f0c8285d1b7496f2ad6898` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8825a44182b94641f9299c32ef44d21235563ef7` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x88c30c134a980e2314edbc622a2418a2dfa69d71` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x890ce0e68515d5e1e5eb76300a5f62caf891731b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x897420993b0ba1adc4ed14c5989fa6d97fcc4210` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8d46b4d4cab15156462f5cec509010fb00c26527` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8f68cd2560a90712013d00b453e579772810b3ed` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8fee5a066ac1c0b662eaec26fc7b62878410d772` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9180583c1ab03587b545629dd60d2be0bf1df4f2` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x92958982aca653d9ab19b65295e09b26a569509e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x94c25380950c606a30d6390ce1755d7d9670b63a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x964505cb24ecee087db5b5626b4e3fff694c718e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x971340ac93bae18351b59ead692430e717085e0a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9766af3ca0897b465bfba700330c5e1e527bfecd` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x980edec0a2a62e3d396a1a60ee8101f5116de316` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98768a65174fbf9d19a138529e0779381b5ec566` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98c2d69af130d66dd59602c84c6fe40d11638ac4` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98cf774f3dd86a7bec58174e426c3fb35a75e800` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9933cfa1a85039f32c61a5d4993b55268b2584d4` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99c65a010c8b4e0a3d7071dd21f9d37b53830ad8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99cc3060487fa635cfd9bcff69417d225b3f0104` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9c760c38646681be20d7f45b8a9d10e0ccc96224` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9e24f0d899795b94c9b6ce8134f8c3e8f79ed37f` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa10983a758dbd8998215db48b44a0ada77c5f7db` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa1a441966e48360d12dc887eb24e5f7c8035fd4d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa22dbba46780ff55eba4662393d9a17568f2e0b6` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa2b7bef45ca795ffae4ec5197e86492d2f7d86a8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa45e5a2258c8124ce11165eebf85991d47dc1703` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6d55074b038a082748c88d9c3e56821c44474ff` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa8391bcec6e011596eb27add45a2e58f47cf40fb` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa863019030f9020009bbb331ee5e8af0882e5cf4` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa9190fbe894a386388b560df6fe9185aa8aa018d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa93a93f76bc96b8dfa43e93e0b3528e7f59ff690` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xab32f72c550901031557cfa3d74224111a774254` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xad74c817ca4b1c302bae6fcdfa743709e07cbae8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xae11408c036fced4c03cd46915daeb573357c63b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaef5365b8868a5766e42df5c095c61dc6013c946` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaf15987c889296f6f597affd382f695e88e83666` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb09bf4bbf08425d9c46ed82df3c45a14c316ddb0` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb787b2c4c66e16c0d14adde6856f2788533d140d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb976c32dad2daf02fa91cb219f93ae62cea3477a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbb566aa4255e4a7f0660f3b9ca80632bdcf9b1ef` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbd686a8cdf1fdc223ff89c78ba3f5f1098b991ba` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf04f7fde6e98ed0edb3014753d6c2517bc26e3c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf964f5518ffdf499047947ae3fdb209db4e42cc` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbfbc24bcca99ee7a332495fe203a06b759849746` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbfbea46ecd61ee1f7d5d1e765e2548eda0d25819` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc1eed5d6cf082fa9f370839330d96e9d0db03340` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc344a33ac93023a18d75bdce967f9d46f50a7f8a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc3d6d27ff4f607c803fd31cc31bbdcdd116773d9` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc46ccf3fbc5a28f1ac4a37f0522d49275b698b40` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc4f157f1f0cadf70b9687d5eaf90deedea901b31` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc528fcbf46457cf08e6bd34346e79e9385fef902` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc573b7e6e7d31ab2a9a1e64d0a7969495b2169ff` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc828ae3f0b0c7ca45ef1f6f81fc9dff6b3aea8bb` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc8be300cc14ce7b611d2c7d72bcbf2e530a063f6` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc92d3399f664c43cf0569e9b6b93019b0eafa88b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcb225352d8d3b0c70e805c4e89aa1e4414ca87d3` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcce0248e307edb891ea9f0ee5cdef7c12cc76c61` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcd9921e21c1796255b7d6f055eed832f7c1dc01c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcf2f2c16f2cc5b36d85f2c2c062aebf04f60a8fb` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd02cc0a97dcf693c55865a56609d6b196a2466b2` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd0b1dc1b39a730d634902c01c61316a97afa31b5` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd13bbda5061c99f770b675e2e0b1380b332fe227` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd197f91e2fc06456a0614dd2162c039920fcc776` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd1c249dc749e6458813da36a3de0bb4a75cd3104` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd31c245ab7aa92b16bfd061c148a2d10b49b53ca` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd43ccd89278d9f5a1ab38117f13618f63344b705` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd4d4c2e8d4297d8a28693bb2f3a89989e524d3a1` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd76eaf7ea4dd631ebf3e4269086df9d0b024f5a0` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd8d9ee1ef6578becc9ce5be30bd2a983454bcd2c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd962d17807693b1cd32ec76d811f1dc8e184f3c8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdbb07d6252795de1e9812ef0a746a7d1bf1c7e26` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdbfc4ce183eda7675882df62fa833583bba67656` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdca31a4d1ca28080b0b6a02dead39aaa602caf8c` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdcc5953161d3872f96a560b496419a597231444b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdd59204d413f2cd5477287a4a4a4ae572240bdf6` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe08677a821259171dfabc5ccbbeb5bd94b03ae8a` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe10b18b4b4f09bb6b2f2ad23297a8d0f79157470` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe2859c4e50bbd88bdeb4988869bfde3d78fe14fb` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe28a6de3135b2c29f27ed71a783c7f7476e79739` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe2f6e2b039073f3b2d21323612c5160e458b7e9e` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe4647bb421e81491529fe204eb7f442d025a6e7d` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe4a3ede011d13d1b24c0670952f9145cc56bfae8` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe4e38e2bc5adda3b93790f31e146212672afb6ca` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe545721e35ad2cd9f1616b22509de643eb0de789` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe694672049674f93016c81fb7a92852549e099bc` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe79c3e42ade3005b1791a41af386ebe06a98359b` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe7b83b7c91520a5c11b61b5ee68173e30ca54354` | non_address_book | unknown | unknown | unverified | n/a | `0xc9cb0b9fe83698dfc3d3935d31baddedb5c06151` |

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
| native | 54 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 217 |

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
