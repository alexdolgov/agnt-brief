# Agentic Audit Brief: QiDao

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: QiDao (`qidao`)
- Website: [https://app.mai.finance](https://app.mai.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, fraxtal, gnosis, harmony, kava, linea, mantle, metis, moonriver, optimism, polygon, polygon-zkevm
- Contract surface: 191 unique implementations (199 raw deployments)
- Coverage basis: 0/127 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,439,860.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for QiDao. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 135 contract row(s) across arbitrum, avalanche, base, bsc, cronos, ethereum, fantom, fraxtal, gnosis, harmony, kava, linea, mantle, metis, moonriver, optimism, polygon, polygon-zkevm. Structural roles: 108 core, 20 supporting, 7 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 135
- Structural roles: core (108), supporting (20), unclassified (7)
- Contract kinds: contract (135)
- Detected standards: ownable (86), erc165 (73), erc721 (72), erc20 (26)
- Frameworks: openzeppelin (105), foundry (14)
- Upgradeable-pattern rows: 0

## Fork Analysis

39 of 199 contracts are derived from known codebases. 160 contracts have no detected origin.

### Forked Contracts

**QiStablecoin** (`0xa3fa99...6997f1`, chain 137)
Origin: allbridge (`0xa3fa99...6997f1`)
Containment: 100.0% - 20 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x4ce4c5...862bad`, chain 1)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x5773e8...4b7473`, chain 1)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x60d133...83b733`, chain 1)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0x82e90e...b5ed28`, chain 1)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0x8c4596...2ac9d1`, chain 1)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0x98eb27...8b4ccf`, chain 1)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0xca3eb4...add123`, chain 1)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0xcc61ee...7cb823`, chain 1)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0xecbd32...844ae1`, chain 1)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0x7198ff...91893b`, chain 10)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0xf9ce25...3beaf5`, chain 10)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0x79afad...e60158`, chain 100)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x11826d...640123`, chain 137)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0x169d47...4dc508`, chain 137)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x3bcbac...a9c122`, chain 137)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x7d75f8...66146b`, chain 137)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0x9a05b1...fae6ab`, chain 137)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0xa3b0a6...a26390`, chain 137)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0xaa19d0...c23451`, chain 137)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0xb1f283...d13c4b`, chain 137)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0xb5b31e...32b54f`, chain 137)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0xf11044...928d38`, chain 137)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0xbf1aea...b087ae`, chain 252)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x10dcbe...01aba9`, chain 1088)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0x19cb63...e6ebb4`, chain 1088)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x5a0371...0020b0`, chain 1088)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 97.8% - 44 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- setCustomURI(bool)

**stableQiVault** (`0x20658f...59b109`, chain 8453)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x491e3a...1d14de`, chain 8453)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x654a31...292349`, chain 8453)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x7333fd...80fa2b`, chain 8453)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x806c02...179313`, chain 8453)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x8d6ceb...09fad6`, chain 8453)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x950ece...7a0fa9`, chain 42161)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0xa86495...73372e`, chain 42161)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0xd37128...d594f3`, chain 42161)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0xe47ca0...4f34ec`, chain 42161)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x7f9dd9...9a7a70`, chain 59144)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**stableQiVault** (`0x8ab01c...626599`, chain 59144)
Origin: zerolend (`0x8ab01c...626599`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3c82a9...beb6e3`, chain 1)
- UnnamedContract (`0x674117...5ba3e7`, chain 1)
- UnnamedContract (`0x86f78d...ec4932`, chain 1)
- UnnamedContract (`0x9414e7...7f59a9`, chain 1)
- UnnamedContract (`0x974510...8e0f2a`, chain 1)
- UnnamedContract (`0xd1a6f4...744f83`, chain 1)
- UnnamedContract (`0xed8a27...e030a4`, chain 1)
- UnnamedContract (`0xf2833f...95bbb4`, chain 1)
- UnnamedContract (`0x480798...0ceaf1`, chain 10)
- UnnamedContract (`0x926b92...d598cf`, chain 10)
- UnnamedContract (`0x954ac1...a0dec2`, chain 10)
- UnnamedContract (`0xab91c5...32b2b9`, chain 10)
- UnnamedContract (`0xb89c1b...71041f`, chain 10)
- UnnamedContract (`0xb9c8f0...d610ec`, chain 10)
- UnnamedContract (`0xbdef6d...ef817a`, chain 10)
- UnnamedContract (`0xc88c8a...dcc6d9`, chain 10)
- UnnamedContract (`0x87a1b3...f75088`, chain 100)
- UnnamedContract (`0xae0928...52b4d8`, chain 100)
- UnnamedContract (`0x11606d...28ba7d`, chain 137)
- UnnamedContract (`0x232627...4c9a87`, chain 137)
- UnnamedContract (`0x4d4872...b274bc`, chain 137)
- UnnamedContract (`0x4a0474...8e0aa9`, chain 1285)
- UnnamedContract (`0x5db661...3da683`, chain 1285)
- UnnamedContract (`0x297e8c...9ac020`, chain 43114)
- UnnamedContract (`0xbe56bf...349d47`, chain 43114)
- UnnamedContract (`0xca3eb4...add123`, chain 43114)
- BeefyVaultPSM (`0x83d417...91cf02`, chain 8453)
- BeefyVaultPSMPoly (`0xdefff8...a92af5`, chain 137)
- BeefyVaultPSMPoly (`0xfa85a4...306be3`, chain 137)
- CallThresholdModuleExtension (`0xa05f9b...144023`, chain 8453)
- camAave (`0xea4040...cfc4eb`, chain 137)
- camToken (`0x0470cd...b76c1d`, chain 137)
- camToken (`0x22965e...f8a1bb`, chain 137)
- camToken (`0xb39112...fea0fb`, chain 137)
- camToken (`0xba6273...69e8df`, chain 137)
- camToken (`0xe6c232...889b7b`, chain 137)
- camWMATIC (`0x7068ea...eb8b0b`, chain 137)
- CrossChainHub (`0xca8a93...59bb45`, chain 1285)
- crosschainMai (`0x5c49b2...ee3f3b`, chain 43114)
- crosschainMai (`0xa56f9a...aeadd6`, chain 43114)
- crosschainQiStablecoin (`0x5c49b2...ee3f3b`, chain 100)
- crosschainQiStablecoin (`0xd2fe44...8e8827`, chain 137)
- crosschainQiStablecoin (`0xff2c44...8bb051`, chain 137)
- crosschainQiStablecoin (`0x97d811...ee1109`, chain 1285)
- crosschainQiStablecoin (`0xfa19c1...15da58`, chain 43114)
- crosschainQiStablecoinSlim (`0x062016...b0bc55`, chain 10)
- crosschainQiStablecoinSlim (`0x014a17...85657f`, chain 56)
- crosschainQiStablecoinSlim (`0xa56f9a...aeadd6`, chain 56)
- crosschainQiStablecoinSlim (`0x014a17...85657f`, chain 100)
- crosschainQiStablecoinSlim (`0x1dcc1f...fa872c`, chain 137)
- crosschainQiStablecoinSlim (`0x1f0aa7...3fa933`, chain 137)
- crosschainQiStablecoinSlim (`0x305f11...b10f6a`, chain 137)
- crosschainQiStablecoinSlim (`0x506533...a24f11`, chain 137)
- crosschainQiStablecoinSlim (`0x7cbf49...d9c19a`, chain 137)
- crosschainQiStablecoinSlim (`0x7d3699...3696c8`, chain 137)
- crosschainQiStablecoinSlim (`0xc76a3c...9f7aa0`, chain 42161)
- crosschainQiStablecoinSlim (`0x73a755...558730`, chain 43114)
- crosschainQiStablecoinSlim (`0xa9122d...5cbbb8`, chain 43114)
- crosschainQiStablecoinSlimV2 (`0xb237f4...562fff`, chain 42161)
- crosschainQiStablecoinSlimV2 (`0x1f8f7a...a3f11a`, chain 43114)
- crosschainQiStablecoinV2 (`0x57cbf3...ff1691`, chain 137)
- crosschainQiStablecoinV2 (`0x13a7fe...546a73`, chain 43114)
- DAIVaultPSM (`0x2f5ced...daa440`, chain 59144)
- EditableERC20 (`0x559b7b...53d53b`, chain 1)
- EditableERC20 (`0xdfa464...964b02`, chain 1088)
- EditableERC20 (`0xfb2019...00fc2c`, chain 1285)
- EditableERC20 (`0xbf1aea...b087ae`, chain 8453)
- EditableERC20 (`0x3f56e0...3dea0d`, chain 42161)
- EditableERC20 (`0xf3b001...4ce12a`, chain 59144)
- erc20QiStablecoin (`0x11a336...e561ad`, chain 137)
- erc20QiStablecoin (`0x3fd939...61d47c`, chain 137)
- erc20QiStablecoin (`0x578375...0efa40`, chain 137)
- erc20QiStablecoin (`0x611670...5cae72`, chain 137)
- erc20QiStablecoin (`0x649aa6...098513`, chain 137)
- erc20QiStablecoin (`0x701a18...7a2867`, chain 137)
- erc20QiStablecoin (`0x87ee36...2b7b11`, chain 137)
- erc20QiStablecoin (`0x88d84a...9fcd1a`, chain 137)
- erc20QiStablecoin (`0x98b5f3...943875`, chain 137)
- erc20QiStablecoin (`0xf086de...9f1433`, chain 137)
- erc20QiStablecoincamwbtc (`0x7dda5e...8a9ae0`, chain 137)
- erc20QiStablecoinwbtc (`0x37131a...0e6ca1`, chain 137)
- GnosisSafeProxy (`0x3182e6...9ff436`, chain 1)
- GnosisSafeProxy (`0x594f17...0dbcbc`, chain 1)
- GnosisSafeProxy (`0x9d3c8a...17cfe6`, chain 1)
- GnosisSafeProxy (`0x6ffcd0...8be76c`, chain 10)
- GnosisSafeProxy (`0x8befba...871878`, chain 10)
- GnosisSafeProxy (`0xb1a8d1...a73d60`, chain 10)
- GnosisSafeProxy (`0x4158bc...b4b50c`, chain 56)
- GnosisSafeProxy (`0xdc6b30...726d7a`, chain 56)
- GnosisSafeProxy (`0xff34fd...cf5843`, chain 56)
- GnosisSafeProxy (`0xbbbe98...188542`, chain 252)
- GnosisSafeProxy (`0xe77482...0632f7`, chain 252)
- GnosisSafeProxy (`0xecd02b...d7bc5e`, chain 252)
- GnosisSafeProxy (`0x32b00a...2f627a`, chain 1088)
- GnosisSafeProxy (`0xc9d375...d854d8`, chain 1088)
- GnosisSafeProxy (`0xe89252...cd7926`, chain 1088)
- GnosisSafeProxy (`0x98f62d...dc563f`, chain 5000)
- GnosisSafeProxy (`0xb06bb6...caa1cd`, chain 5000)
- GnosisSafeProxy (`0x657240...2ba54f`, chain 8453)
- GnosisSafeProxy (`0x8fc068...e253fb`, chain 8453)
- GnosisSafeProxy (`0xa8f1af...74fbf5`, chain 59144)
- GnosisSafeProxy (`0xcdc048...52c42c`, chain 59144)
- GnosisSafeProxy (`0xf1da26...41cf20`, chain 59144)
- graceQiVault (`0xab9c4c...7ec7f1`, chain 8453)
- MorphoVaultPSM (`0x19286b...d39022`, chain 8453)
- MorphoVaultPSM (`0x88960e...b6cd4c`, chain 8453)
- PerformanceTokenManagerGamma (`0x580d0b...5f9c85`, chain 42161)
- PerformanceTokens (`0xe9d954...2c4a0c`, chain 1)
- PerformanceTokens (`0x22f39d...773ec4`, chain 10)
- PerformanceTokens (`0x2acd70...ec6e79`, chain 137)
- PerformanceTokens (`0x2dea91...78a801`, chain 137)
- PerformanceTokens (`0x4c8dfb...1a5edb`, chain 137)
- PerformanceTokens (`0xcc0303...51212b`, chain 137)
- PerformanceTokens (`0xc765d6...e195e4`, chain 8453)
- PerformanceTokens (`0x4fc050...5b1f35`, chain 42161)
- PerformanceTokenStaker (`0xf05f0e...2190fe`, chain 42161)
- PerformanceTokensV2 (`0x96c8f7...62b810`, chain 8453)
- QiDaoProxyOFT (`0xd3fdcb...d3d7d7`, chain 1)
- RewardDistributor (`0x8549ba...a2f1de`, chain 1)
- UnnamedContract (`0x2ae35c...6ef8cb`, chain 25)
- UnnamedContract (`0xf5c2b1...f74a72`, chain 25)
- UnnamedContract (`0x0b7b22...a47781`, chain 250)
- UnnamedContract (`0x1066b8...4331a0`, chain 250)
- UnnamedContract (`0x267bdd...9160a6`, chain 250)
- UnnamedContract (`0x3609a3...89ba90`, chain 250)
- UnnamedContract (`0x3f6cf1...c0e7d4`, chain 250)
- UnnamedContract (`0x5563cc...e12436`, chain 250)
- UnnamedContract (`0x571f42...4be7b4`, chain 250)
- UnnamedContract (`0x61ba1a...6e649c`, chain 250)
- UnnamedContract (`0x679016...a15a54`, chain 250)
- UnnamedContract (`0x682e47...28f034`, chain 250)
- UnnamedContract (`0x6d6029...4e32fd`, chain 250)
- UnnamedContract (`0x75d4ab...36a1ef`, chain 250)
- UnnamedContract (`0x7ae524...920676`, chain 250)
- UnnamedContract (`0x7efb26...202798`, chain 250)
- UnnamedContract (`0x8e5e4d...636fa2`, chain 250)
- UnnamedContract (`0x9ba01b...a9abde`, chain 250)
- UnnamedContract (`0xbf0ff8...854146`, chain 250)
- UnnamedContract (`0xc1c7ef...075b4e`, chain 250)
- UnnamedContract (`0xd6488d...846086`, chain 250)
- UnnamedContract (`0xd939c2...9562d4`, chain 250)
- UnnamedContract (`0xdb0990...569bd9`, chain 250)
- UnnamedContract (`0xe5996a...d8d094`, chain 250)
- UnnamedContract (`0xf34e27...6f16ed`, chain 250)
- UnnamedContract (`0xfb98b3...ea213b`, chain 250)
- UnnamedContract (`0x20265d...289355`, chain 1101)
- UnnamedContract (`0x4d4872...b274bc`, chain 1101)
- UnnamedContract (`0x615b25...f0e5b4`, chain 1101)
- UnnamedContract (`0x665a01...e34a6d`, chain 1101)
- UnnamedContract (`0xc8a3e6...61f7ae`, chain 1101)
- UnnamedContract (`0xe2bd61...a16834`, chain 1101)
- UnnamedContract (`0xb84df1...36afc7`, chain 2222)
- UnnamedContract (`0xe43d58...5c3a83`, chain 2222)
- UnnamedContract (`0x12fcb2...1da94f`, chain 1666600000)
- UnnamedContract (`0x46469f...ed36d6`, chain 1666600000)
- UnnamedContract (`0x9f4e3d...3bbb28`, chain 1666600000)
- UnnamedContract (`0xc85c1c...52f13d`, chain 1666600000)
- USDCVaultDDW (`0x7a802a...eecb00`, chain 1088)
- VaultFeeManagerGamma (`0xdcc1c6...b98158`, chain 42161)
- VotingEscrowGamma (`0x1bffab...8bc732`, chain 1)

## Contract Surface Quality

- Indexed contracts: 135; live-surface contracts included: 135 (135 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 191/192 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/127 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 191 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Deployed-live implementations: 191 of 191 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/127
- Verified + Unaudited implementations: 127
- Verified by bytecode match: 0
- Unverified implementations: 64
- Unique implementations: 191
- Raw deployments: 199
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
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
| BeefyVaultPSM | core_logic | project_anchor | own_supporting | 0 | base | unit-252775 | `0x83d417...91cf02` | ⚠️ Unaudited |
| BeefyVaultPSMPoly | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252695 | `0xdefff8...a92af5` | ⚠️ Unaudited |
| BeefyVaultPSMPoly | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252700 | `0xfa85a4...306be3` | ⚠️ Unaudited |
| CallThresholdModuleExtension | adapter | project_anchor | own_supporting | 0 | base | unit-252780 | `0xa05f9b...144023` | ⚠️ Unaudited |
| camAave | unknown | project_anchor | own_supporting | 0 | polygon | unit-252697 | `0xea4040...cfc4eb` | ⚠️ Unaudited |
| camToken | token | project_anchor | own_supporting | 0 | polygon | unit-252652 | `0x0470cd...b76c1d` | ⚠️ Unaudited |
| camToken | token | project_anchor | own_supporting | 0 | polygon | unit-252661 | `0x22965e...f8a1bb` | ⚠️ Unaudited |
| camToken | token | project_anchor | own_supporting | 0 | polygon | unit-252690 | `0xb39112...fea0fb` | ⚠️ Unaudited |
| camToken | token | project_anchor | own_supporting | 0 | polygon | unit-252692 | `0xba6273...69e8df` | ⚠️ Unaudited |
| camToken | token | project_anchor | own_supporting | 0 | polygon | unit-252696 | `0xe6c232...889b7b` | ⚠️ Unaudited |
| camWMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-252677 | `0x7068ea...eb8b0b` | ⚠️ Unaudited |
| CrossChainHub | unknown | project_anchor | own_supporting | 0 | moonriver | unit-252650 | `0xca8a93...59bb45` | ⚠️ Unaudited |
| crosschainMai | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252753 | `0x5c49b2...ee3f3b` | ⚠️ Unaudited |
| crosschainMai | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252755 | `0xa56f9a...aeadd6` | ⚠️ Unaudited |
| crosschainQiStablecoin | token | project_anchor | own_supporting | 0 | gnosis | unit-252629 | `0x5c49b2...ee3f3b` | ⚠️ Unaudited |
| crosschainQiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252694 | `0xd2fe44...8e8827` | ⚠️ Unaudited |
| crosschainQiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252701 | `0xff2c44...8bb051` | ⚠️ Unaudited |
| crosschainQiStablecoin | token | project_anchor | own_supporting | 0 | moonriver | unit-252649 | `0x97d811...ee1109` | ⚠️ Unaudited |
| crosschainQiStablecoin | token | project_anchor | own_supporting | 0 | avalanche | unit-252759 | `0xfa19c1...15da58` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | optimism | unit-252616 | `0x062016...b0bc55` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | bsc | unit-252762 | `0x014a17...85657f` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | bsc | unit-252763 | `0xa56f9a...aeadd6` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | gnosis | unit-252628 | `0x014a17...85657f` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | polygon | unit-252659 | `0x1dcc1f...fa872c` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | polygon | unit-252660 | `0x1f0aa7...3fa933` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | polygon | unit-252665 | `0x305f11...b10f6a` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | polygon | unit-252671 | `0x506533...a24f11` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | polygon | unit-252678 | `0x7cbf49...d9c19a` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | polygon | unit-252679 | `0x7d3699...3696c8` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | arbitrum | unit-252745 | `0xc76a3c...9f7aa0` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | avalanche | unit-252754 | `0x73a755...558730` | ⚠️ Unaudited |
| crosschainQiStablecoinSlim | token | project_anchor | own_supporting | 0 | avalanche | unit-252756 | `0xa9122d...5cbbb8` | ⚠️ Unaudited |
| crosschainQiStablecoinSlimV2 | token | project_anchor | own_supporting | 0 | arbitrum | unit-252744 | `0xb237f4...562fff` | ⚠️ Unaudited |
| crosschainQiStablecoinSlimV2 | token | project_anchor | own_supporting | 0 | avalanche | unit-252751 | `0x1f8f7a...a3f11a` | ⚠️ Unaudited |
| crosschainQiStablecoinV2 | token | project_anchor | own_supporting | 0 | polygon | unit-252673 | `0x57cbf3...ff1691` | ⚠️ Unaudited |
| crosschainQiStablecoinV2 | token | project_anchor | own_supporting | 0 | avalanche | unit-252750 | `0x13a7fe...546a73` | ⚠️ Unaudited |
| DAIVaultPSM | core_logic | project_anchor | own_supporting | 0 | linea | unit-252764 | `0x2f5ced...daa440` | ⚠️ Unaudited |
| EditableERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-252597 | `0x559b7b...53d53b` | ⚠️ Unaudited |
| EditableERC20 | token | project_anchor | own_supporting | 0 | metis | unit-252639 | `0xdfa464...964b02` | ⚠️ Unaudited |
| EditableERC20 | token | project_anchor | own_supporting | 0 | moonriver | unit-252651 | `0xfb2019...00fc2c` | ⚠️ Unaudited |
| EditableERC20 | token | project_anchor | own_supporting | 0 | base | unit-252782 | `0xbf1aea...b087ae` | ⚠️ Unaudited |
| EditableERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-252739 | `0x3f56e0...3dea0d` | ⚠️ Unaudited |
| EditableERC20 | token | project_anchor | own_supporting | 0 | linea | unit-252767 | `0xf3b001...4ce12a` | ⚠️ Unaudited |
| erc20QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252655 | `0x11a336...e561ad` | ⚠️ Unaudited |
| erc20QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252668 | `0x3fd939...61d47c` | ⚠️ Unaudited |
| erc20QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252672 | `0x578375...0efa40` | ⚠️ Unaudited |
| erc20QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252674 | `0x611670...5cae72` | ⚠️ Unaudited |
| erc20QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252675 | `0x649aa6...098513` | ⚠️ Unaudited |
| erc20QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252676 | `0x701a18...7a2867` | ⚠️ Unaudited |
| erc20QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252682 | `0x87ee36...2b7b11` | ⚠️ Unaudited |
| erc20QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252683 | `0x88d84a...9fcd1a` | ⚠️ Unaudited |
| erc20QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252684 | `0x98b5f3...943875` | ⚠️ Unaudited |
| erc20QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252698 | `0xf086de...9f1433` | ⚠️ Unaudited |
| erc20QiStablecoincamwbtc | token | project_anchor | own_supporting | 0 | polygon | unit-252681 | `0x7dda5e...8a9ae0` | ⚠️ Unaudited |
| erc20QiStablecoinwbtc | token | project_anchor | own_supporting | 0 | polygon | unit-252666 | `0x37131a...0e6ca1` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 3 | ethereum | unit-252784 (3 proxies) | 3 deployments: ethereum `0x3182e6...9ff436`; ethereum `0x594f17...0dbcbc`; ethereum `0x9d3c8a...17cfe6` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 3 | optimism | unit-252785 (3 proxies) | 3 deployments: optimism `0x6ffcd0...8be76c`; optimism `0x8befba...871878`; optimism `0xb1a8d1...a73d60` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 3 | bsc | unit-252786 (3 proxies) | 3 deployments: bsc `0x4158bc...b4b50c`; bsc `0xdc6b30...726d7a`; bsc `0xff34fd...cf5843` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 3 | linea | unit-252787 (3 proxies) | 3 deployments: linea `0xa8f1af...74fbf5`; linea `0xcdc048...52c42c`; linea `0xf1da26...41cf20` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | fraxtal | unit-252735 | `0xbbbe98...188542` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | fraxtal | unit-252737 | `0xe77482...0632f7` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | fraxtal | unit-252738 | `0xecd02b...d7bc5e` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | metis | unit-252635 | `0x32b00a...2f627a` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | metis | unit-252638 | `0xc9d375...d854d8` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | metis | unit-252640 | `0xe89252...cd7926` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | mantle | unit-252760 | `0x98f62d...dc563f` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | mantle | unit-252761 | `0xb06bb6...caa1cd` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | base | unit-252772 | `0x657240...2ba54f` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | base | unit-252778 | `0x8fc068...e253fb` | ⚠️ Unaudited |
| graceQiVault | core_logic | project_anchor | own_supporting | 0 | base | unit-252781 | `0xab9c4c...7ec7f1` | ⚠️ Unaudited |
| MorphoVaultPSM | core_logic | project_anchor | own_supporting | 0 | base | unit-252768 | `0x19286b...d39022` | ⚠️ Unaudited |
| MorphoVaultPSM | core_logic | project_anchor | own_supporting | 0 | base | unit-252776 | `0x88960e...b6cd4c` | ⚠️ Unaudited |
| PerformanceTokenManagerGamma | governance | project_anchor | own_supporting | 0 | arbitrum | unit-252741 | `0x580d0b...5f9c85` | ⚠️ Unaudited |
| PerformanceTokens | token | project_anchor | own_supporting | 0 | ethereum | unit-252612 | `0xe9d954...2c4a0c` | ⚠️ Unaudited |
| PerformanceTokens | token | project_anchor | own_supporting | 0 | optimism | unit-252617 | `0x22f39d...773ec4` | ⚠️ Unaudited |
| PerformanceTokens | token | project_anchor | own_supporting | 0 | polygon | unit-252663 | `0x2acd70...ec6e79` | ⚠️ Unaudited |
| PerformanceTokens | token | project_anchor | own_supporting | 0 | polygon | unit-252664 | `0x2dea91...78a801` | ⚠️ Unaudited |
| PerformanceTokens | token | project_anchor | own_supporting | 0 | polygon | unit-252669 | `0x4c8dfb...1a5edb` | ⚠️ Unaudited |
| PerformanceTokens | token | project_anchor | own_supporting | 0 | polygon | unit-252693 | `0xcc0303...51212b` | ⚠️ Unaudited |
| PerformanceTokens | token | project_anchor | own_supporting | 0 | base | unit-252783 | `0xc765d6...e195e4` | ⚠️ Unaudited |
| PerformanceTokens | token | project_anchor | own_supporting | 0 | arbitrum | unit-252740 | `0x4fc050...5b1f35` | ⚠️ Unaudited |
| PerformanceTokenStaker | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-252749 | `0xf05f0e...2190fe` | ⚠️ Unaudited |
| PerformanceTokensV2 | token | project_anchor | own_supporting | 0 | base | unit-252779 | `0x96c8f7...62b810` | ⚠️ Unaudited |
| QiDaoProxyOFT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252611 | `0xd3fdcb...d3d7d7` | ⚠️ Unaudited |
| QiStablecoin | token | project_anchor | own_supporting | 0 | polygon | unit-252687 | `0xa3fa99...6997f1` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-252602 | `0x8549ba...a2f1de` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-252596 | `0x4ce4c5...862bad` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-252598 | `0x5773e8...4b7473` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-252599 | `0x60d133...83b733` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-252601 | `0x82e90e...b5ed28` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-252604 | `0x8c4596...2ac9d1` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-252607 | `0x98eb27...8b4ccf` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-252608 | `0xca3eb4...add123` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-252609 | `0xcc61ee...7cb823` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-252613 | `0xecbd32...844ae1` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-252619 | `0x7198ff...91893b` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | optimism | unit-252627 | `0xf9ce25...3beaf5` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | gnosis | unit-252630 | `0x79afad...e60158` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252654 | `0x11826d...640123` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252657 | `0x169d47...4dc508` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252667 | `0x3bcbac...a9c122` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252680 | `0x7d75f8...66146b` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252685 | `0x9a05b1...fae6ab` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252686 | `0xa3b0a6...a26390` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252688 | `0xaa19d0...c23451` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252689 | `0xb1f283...d13c4b` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252691 | `0xb5b31e...32b54f` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-252699 | `0xf11044...928d38` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | fraxtal | unit-252736 | `0xbf1aea...b087ae` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | metis | unit-252633 | `0x10dcbe...01aba9` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | metis | unit-252634 | `0x19cb63...e6ebb4` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | metis | unit-252636 | `0x5a0371...0020b0` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | base | unit-252769 | `0x20658f...59b109` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | base | unit-252770 | `0x491e3a...1d14de` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | base | unit-252771 | `0x654a31...292349` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | base | unit-252773 | `0x7333fd...80fa2b` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | base | unit-252774 | `0x806c02...179313` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | base | unit-252777 | `0x8d6ceb...09fad6` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-252742 | `0x950ece...7a0fa9` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-252743 | `0xa86495...73372e` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-252746 | `0xd37128...d594f3` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-252748 | `0xe47ca0...4f34ec` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-252765 | `0x7f9dd9...9a7a70` | ⚠️ Unaudited |
| stableQiVault | core_logic | project_anchor | own_supporting | 0 | linea | unit-252766 | `0x8ab01c...626599` | ⚠️ Unaudited |
| USDCVaultDDW | core_logic | project_anchor | own_supporting | 0 | metis | unit-252637 | `0x7a802a...eecb00` | ⚠️ Unaudited |
| VaultFeeManagerGamma | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-252747 | `0xdcc1c6...b98158` | ⚠️ Unaudited |
| VotingEscrowGamma | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-252594 | `0x1bffab...8bc732` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (64)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252595 | `0x3c82a9...beb6e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252600 | `0x674117...5ba3e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252603 | `0x86f78d...ec4932` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252605 | `0x9414e7...7f59a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252606 | `0x974510...8e0f2a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252610 | `0xd1a6f4...744f83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252614 | `0xed8a27...e030a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-252615 | `0xf2833f...95bbb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-252618 | `0x480798...0ceaf1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-252620 | `0x926b92...d598cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-252621 | `0x954ac1...a0dec2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-252622 | `0xab91c5...32b2b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-252623 | `0xb89c1b...71041f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-252624 | `0xb9c8f0...d610ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-252625 | `0xbdef6d...ef817a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-252626 | `0xc88c8a...dcc6d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-252709 | `0x2ae35c...6ef8cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-252710 | `0xf5c2b1...f74a72` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-252631 | `0x87a1b3...f75088` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-252632 | `0xae0928...52b4d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-252653 | `0x11606d...28ba7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-252662 | `0x232627...4c9a87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-252670 | `0x4d4872...b274bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252711 | `0x0b7b22...a47781` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252712 | `0x1066b8...4331a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252713 | `0x267bdd...9160a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252714 | `0x3609a3...89ba90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252715 | `0x3f6cf1...c0e7d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252716 | `0x5563cc...e12436` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252717 | `0x571f42...4be7b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252718 | `0x61ba1a...6e649c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252719 | `0x679016...a15a54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252720 | `0x682e47...28f034` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252721 | `0x6d6029...4e32fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252722 | `0x75d4ab...36a1ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252723 | `0x7ae524...920676` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252724 | `0x7efb26...202798` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252725 | `0x8e5e4d...636fa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252726 | `0x9ba01b...a9abde` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252727 | `0xbf0ff8...854146` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252728 | `0xc1c7ef...075b4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252729 | `0xd6488d...846086` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252730 | `0xd939c2...9562d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252731 | `0xdb0990...569bd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252732 | `0xe5996a...d8d094` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252733 | `0xf34e27...6f16ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-252734 | `0xfb98b3...ea213b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-252641 | `0x20265d...289355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-252642 | `0x4d4872...b274bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-252643 | `0x615b25...f0e5b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-252644 | `0x665a01...e34a6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-252645 | `0xc8a3e6...61f7ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon-zkevm | unit-252646 | `0xe2bd61...a16834` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-252647 | `0x4a0474...8e0aa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonriver | unit-252648 | `0x5db661...3da683` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-252707 | `0xb84df1...36afc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-252708 | `0xe43d58...5c3a83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252752 | `0x297e8c...9ac020` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252757 | `0xbe56bf...349d47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-252758 | `0xca3eb4...add123` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-252702 | `0x12fcb2...1da94f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-252703 | `0x46469f...ed36d6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-252704 | `0x9f4e3d...3bbb28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | harmony | unit-252706 | `0xc85c1c...52f13d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cybersecadvisor.org](https://cybersecadvisor.org/) | Bramah Systems | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11652] cybersecadvisor.org — no match: The provided text is a marketing page for a cybersecurity advisory service, not an audit report. No contracts, scope sections, or audit dates are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x83d417...91cf02` | BeefyVaultPSM | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xdefff8...a92af5` | BeefyVaultPSMPoly | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xfa85a4...306be3` | BeefyVaultPSMPoly | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa05f9b...144023` | CallThresholdModuleExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xea4040...cfc4eb` | camAave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0470cd...b76c1d` | camToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x22965e...f8a1bb` | camToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb39112...fea0fb` | camToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xba6273...69e8df` | camToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xe6c232...889b7b` | camToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7068ea...eb8b0b` | camWMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xca8a93...59bb45` | CrossChainHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5c49b2...ee3f3b` | crosschainMai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa56f9a...aeadd6` | crosschainMai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x5c49b2...ee3f3b` | crosschainQiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd2fe44...8e8827` | crosschainQiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xff2c44...8bb051` | crosschainQiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x97d811...ee1109` | crosschainQiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xfa19c1...15da58` | crosschainQiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x062016...b0bc55` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x014a17...85657f` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xa56f9a...aeadd6` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x014a17...85657f` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1dcc1f...fa872c` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1f0aa7...3fa933` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x305f11...b10f6a` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x506533...a24f11` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7cbf49...d9c19a` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7d3699...3696c8` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc76a3c...9f7aa0` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x73a755...558730` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa9122d...5cbbb8` | crosschainQiStablecoinSlim | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xb237f4...562fff` | crosschainQiStablecoinSlimV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x1f8f7a...a3f11a` | crosschainQiStablecoinSlimV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x57cbf3...ff1691` | crosschainQiStablecoinV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x13a7fe...546a73` | crosschainQiStablecoinV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2f5ced...daa440` | DAIVaultPSM | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x559b7b...53d53b` | EditableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0xdfa464...964b02` | EditableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xfb2019...00fc2c` | EditableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbf1aea...b087ae` | EditableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3f56e0...3dea0d` | EditableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xf3b001...4ce12a` | EditableERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x11a336...e561ad` | erc20QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3fd939...61d47c` | erc20QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x578375...0efa40` | erc20QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x611670...5cae72` | erc20QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x649aa6...098513` | erc20QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x701a18...7a2867` | erc20QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x87ee36...2b7b11` | erc20QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x88d84a...9fcd1a` | erc20QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x98b5f3...943875` | erc20QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf086de...9f1433` | erc20QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7dda5e...8a9ae0` | erc20QiStablecoincamwbtc | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x37131a...0e6ca1` | erc20QiStablecoinwbtc | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xab9c4c...7ec7f1` | graceQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x580d0b...5f9c85` | PerformanceTokenManagerGamma | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe9d954...2c4a0c` | PerformanceTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x22f39d...773ec4` | PerformanceTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2acd70...ec6e79` | PerformanceTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2dea91...78a801` | PerformanceTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4c8dfb...1a5edb` | PerformanceTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xcc0303...51212b` | PerformanceTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc765d6...e195e4` | PerformanceTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4fc050...5b1f35` | PerformanceTokens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf05f0e...2190fe` | PerformanceTokenStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x96c8f7...62b810` | PerformanceTokensV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3fdcb...d3d7d7` | QiDaoProxyOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa3fa99...6997f1` | QiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8549ba...a2f1de` | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4ce4c5...862bad` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5773e8...4b7473` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x60d133...83b733` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x82e90e...b5ed28` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c4596...2ac9d1` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x98eb27...8b4ccf` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xca3eb4...add123` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc61ee...7cb823` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xecbd32...844ae1` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x7198ff...91893b` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf9ce25...3beaf5` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x79afad...e60158` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x11826d...640123` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x169d47...4dc508` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3bcbac...a9c122` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7d75f8...66146b` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9a05b1...fae6ab` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa3b0a6...a26390` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xaa19d0...c23451` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb1f283...d13c4b` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb5b31e...32b54f` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf11044...928d38` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0xbf1aea...b087ae` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x10dcbe...01aba9` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x19cb63...e6ebb4` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x5a0371...0020b0` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x20658f...59b109` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x491e3a...1d14de` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x654a31...292349` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x7333fd...80fa2b` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x806c02...179313` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8d6ceb...09fad6` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x950ece...7a0fa9` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa86495...73372e` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd37128...d594f3` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe47ca0...4f34ec` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x7f9dd9...9a7a70` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x8ab01c...626599` | stableQiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | `0x7a802a...eecb00` | USDCVaultDDW | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xdcc1c6...b98158` | VaultFeeManagerGamma | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1bffab...8bc732` | VotingEscrowGamma | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 111 |
| upstream | 2 |
| standard_library | 14 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [11652] cybersecadvisor.org

Fork inheritance lineage and inherited audits are included when available.
