# Agentic Audit Brief: Parallel Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Parallel Protocol (`parallel-protocol`)
- Website: [https://parallel.best/](https://parallel.best/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, fraxtal, gnosis, hyperliquid, ink, linea, optimism, plasma, polygon, scroll, sei, sonic, unichain
- Contract surface: 179 unique implementations (266 raw deployments)
- Coverage basis: 0/108 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,623,734.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Parallel Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 143 contract row(s) across arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, fraxtal, gnosis, hyperliquid, ink, linea, optimism, plasma, polygon, scroll, sei, sonic, unichain. Structural roles: 71 unclassified, 59 supporting, 13 core. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 143
- Structural roles: unclassified (71), supporting (59), core (13)
- Contract kinds: contract (141), abstract (2)
- Detected standards: erc20 (16), multicall (16), ownable (16), pausable (16), erc1967proxy (5)
- Frameworks: openzeppelin (70), chainlink (17), layerzero (16), openzeppelin-upgradeable (5), permit2 (2)
- Upgradeable-pattern rows: 5

## Fork Analysis

18 of 166 contracts are derived from known codebases. 148 contracts have no detected origin.

### Forked Contracts

**BridgeableTokenP** (`0x78bb4882b77d74ad9b04ab71fe8e61f72595823c`, chain 1)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x76a9a0062ec6712b99b4f63bd2b4270185759dd5`, chain 10)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x7b54f3d993d3bca077946034ea710f9c07420c72`, chain 56)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec`, chain 100)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec`, chain 130)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9afdb5a5ec2bbdddaa4573baa25caa4e4e4a2ca9`, chain 137)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0xda818995ddeee3ac36bf492133e1feae1fa377e6`, chain 146)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9e79ec4bc3574f2865636aecff44b60a723a9ee7`, chain 252)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0xc3bef21ea7deb5c34cf33e918c8e28972c8048ed`, chain 999)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x7b54f3d993d3bca077946034ea710f9c07420c72`, chain 1329)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x4dde0e308cfb60515218c6ad2df1134fc48531fc`, chain 8453)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9e79ec4bc3574f2865636aecff44b60a723a9ee7`, chain 9745)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x4dde0e308cfb60515218c6ad2df1134fc48531fc`, chain 42161)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec`, chain 43114)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9e79ec4bc3574f2865636aecff44b60a723a9ee7`, chain 59144)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec`, chain 80094)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BridgeableTokenP** (`0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec`, chain 534352)
Origin: mimo (`0x4dde0e...8531fc`)
Containment: 92.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- lzReceiveSimulate(Origin,bytes32,bytes,address,bytes)
- setMsgInspector(address)

**Getters** (`0x90e4ae8ba8c6fd51fced0f9331668b05c7a4ee43`, chain 146)
Origin: mimo (`0x120805...06a9d2`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0d45b129dc868963025db79a9074ea9c9e32cae4`, chain 1)
- UnnamedContract (`0x1bb46fc55e3fd91ca0f162dcc0b3ef574c8ff97e`, chain 1)
- UnnamedContract (`0x41d58951cbd12d4ef49b0437897677bbf5547c80`, chain 1)
- UnnamedContract (`0x4738682c1d8981ed9583b58f619d91742ad8e74f`, chain 1)
- UnnamedContract (`0x506ba37aa8e265be445913b9c4080852277f3c5a`, chain 1)
- UnnamedContract (`0x6efeddf9269c3683ba516cb0e2124fe335f262a2`, chain 1)
- UnnamedContract (`0x9b3a8f7cec208e247d97dee13313690977e24459`, chain 1)
- UnnamedContract (`0xa19c5d1013a8682ac76206a085ec24ac89f7c025`, chain 1)
- UnnamedContract (`0xa360e5ad9f17caff53715346888aa0d13541c2f5`, chain 1)
- UnnamedContract (`0xa9c21cf291ad935e0c9b05a55a42254fb159181d`, chain 1)
- UnnamedContract (`0xad58fc13a682a121e5fe2f8e45d4d988a7e51b0d`, chain 1)
- UnnamedContract (`0xc743bede8412228b42ae755cd64a33cd3ae4a92f`, chain 1)
- UnnamedContract (`0xc9b6279baa19dbb8bcc3250c89caa093aaba0bfc`, chain 1)
- UnnamedContract (`0xd8cc2a51556da84b5db309e86f30ff98b5309862`, chain 1)
- UnnamedContract (`0xeb197439d1425f3129f01f7763ec511df2489095`, chain 1)
- UnnamedContract (`0x3dde241c6263eb0cdf2e09f77cbcf90028a9a6c3`, chain 43114)
- UnnamedContract (`0x9e0dcf7a33bbde6689560c5c807dd2a3df991277`, chain 534352)
- UnnamedContract (`0xcb3e564293393e0d4f43305a250d4e1716de600b`, chain 534352)
- UnnamedContract (`0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b`, chain 534352)
- DiamondCut (`0xe9fe4720fa99f9b28584da44abb8cf91f15990e8`, chain 146)
- DiamondCut (`0xa65821ffe86e6eb613daa1f70af350c5a21759df`, chain 999)
- DiamondCut (`0x15452454a9735d68df430879b2941316a09295b1`, chain 8453)
- DiamondCut (`0x657acb8a3bf9383e561565d422ea9b9a90ce0052`, chain 43114)
- DiamondLoupe (`0x2b6c7c275404e93a14a05b549af292231d6e4dec`, chain 146)
- DiamondLoupe (`0xbefbae2330186f031b469e26283acc66bb5f8826`, chain 999)
- DiamondLoupe (`0x24cef236056834f38e9247a1fff6681dd313d3aa`, chain 8453)
- DiamondLoupe (`0x23d491aa7c0972087f8a607f6f4c7106a02ba95d`, chain 43114)
- DiamondProxy (`0xbefbae2330186f031b469e26283acc66bb5f8826`, chain 146)
- DiamondProxy (`0x1250304f66404cd153fa39388ddcdaec7e0f1707`, chain 999)
- DiamondProxy (`0xc3bef21ea7deb5c34cf33e918c8e28972c8048ed`, chain 8453)
- DiamondProxy (`0x41d58951cbd12d4ef49b0437897677bbf5547c80`, chain 43114)
- ERC1967Proxy (`0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9`, chain 10)
- ERC1967Proxy (`0x90337e484b1cb02132fc150d3afa262147348545`, chain 10)
- ERC1967Proxy (`0x048c4e07d170eedee8772ca76aee1c4e2d133d5c`, chain 56)
- ERC1967Proxy (`0xc0e62f863bbd9dab9d2f79e4ecc248e60c4fe3fa`, chain 56)
- ERC1967Proxy (`0x9e0dcf7a33bbde6689560c5c807dd2a3df991277`, chain 100)
- ERC1967Proxy (`0x9ee1963f05553ef838604dd39403be21cef26aa4`, chain 100)
- ERC1967Proxy (`0x9e0dcf7a33bbde6689560c5c807dd2a3df991277`, chain 130)
- ERC1967Proxy (`0x9ee1963f05553ef838604dd39403be21cef26aa4`, chain 130)
- ERC1967Proxy (`0x1250304f66404cd153fa39388ddcdaec7e0f1707`, chain 137)
- ERC1967Proxy (`0xc15fd01a21e8f6625f709b16f6b3562d2848da5f`, chain 137)
- ERC1967Proxy (`0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182`, chain 146)
- ERC1967Proxy (`0x2cb56df31b909854b01d4b1ead5676cf90e885e7`, chain 146)
- ERC1967Proxy (`0xe8a3da6f5ed1cf04c58ac7f6a7383641e877517b`, chain 146)
- ERC1967Proxy (`0x46b053ce47f16390574bb8f54caccd04c1e3faf2`, chain 252)
- ERC1967Proxy (`0x8fcf9118fdd359f6277cdd143c2da206e64140f3`, chain 252)
- ERC1967Proxy (`0x15452454a9735d68df430879b2941316a09295b1`, chain 999)
- ERC1967Proxy (`0x9b3a8f7cec208e247d97dee13313690977e24459`, chain 999)
- ERC1967Proxy (`0xbe65f0f410a72bec163dc65d46c83699e957d588`, chain 999)
- ERC1967Proxy (`0x048c4e07d170eedee8772ca76aee1c4e2d133d5c`, chain 1329)
- ERC1967Proxy (`0xc0e62f863bbd9dab9d2f79e4ecc248e60c4fe3fa`, chain 1329)
- ERC1967Proxy (`0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182`, chain 8453)
- ERC1967Proxy (`0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7`, chain 8453)
- ERC1967Proxy (`0x76a9a0062ec6712b99b4f63bd2b4270185759dd5`, chain 8453)
- ERC1967Proxy (`0x46b053ce47f16390574bb8f54caccd04c1e3faf2`, chain 9745)
- ERC1967Proxy (`0xc2f8b5d893217462ae9c9879c9285a5a3aabcb8f`, chain 9745)
- ERC1967Proxy (`0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182`, chain 42161)
- ERC1967Proxy (`0x76a9a0062ec6712b99b4f63bd2b4270185759dd5`, chain 42161)
- ERC1967Proxy (`0x9d92c21205383651610f90722131655a5b8ed3e0`, chain 43114)
- ERC1967Proxy (`0x9e0dcf7a33bbde6689560c5c807dd2a3df991277`, chain 43114)
- ERC1967Proxy (`0x9ee1963f05553ef838604dd39403be21cef26aa4`, chain 43114)
- ERC1967Proxy (`0x46b053ce47f16390574bb8f54caccd04c1e3faf2`, chain 59144)
- ERC1967Proxy (`0x8fcf9118fdd359f6277cdd143c2da206e64140f3`, chain 59144)
- ERC1967Proxy (`0x9e0dcf7a33bbde6689560c5c807dd2a3df991277`, chain 80094)
- ERC1967Proxy (`0x9ee1963f05553ef838604dd39403be21cef26aa4`, chain 80094)
- ERC1967Proxy (`0x9ee1963f05553ef838604dd39403be21cef26aa4`, chain 534352)
- FlashParallelToken (`0x4def531c3060686948f00ecc7504f2e0b71eda14`, chain 10)
- FlashParallelToken (`0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec`, chain 56)
- FlashParallelToken (`0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b`, chain 100)
- FlashParallelToken (`0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b`, chain 130)
- FlashParallelToken (`0x09f3964874d3c8494f2e98e9e003e53c2750ab72`, chain 137)
- FlashParallelToken (`0x4dde0e308cfb60515218c6ad2df1134fc48531fc`, chain 146)
- FlashParallelToken (`0x10eb3f443baa258b3417d6c318f7865ad61b539b`, chain 252)
- FlashParallelToken (`0x3997f0dbd1e2cfc4eccf60c31366930dcf2298d7`, chain 999)
- FlashParallelToken (`0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec`, chain 1329)
- FlashParallelToken (`0xb3dbece41acdd6ad76d037b8da2e53c58826746c`, chain 8453)
- FlashParallelToken (`0x10eb3f443baa258b3417d6c318f7865ad61b539b`, chain 9745)
- FlashParallelToken (`0xb3dbece41acdd6ad76d037b8da2e53c58826746c`, chain 42161)
- FlashParallelToken (`0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b`, chain 43114)
- FlashParallelToken (`0x10eb3f443baa258b3417d6c318f7865ad61b539b`, chain 59144)
- FlashParallelToken (`0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b`, chain 80094)
- GenericHarvester (`0x36da06796fd9d22bcd6287b66a87ffdadb12636c`, chain 1)
- GenericHarvester (`0x120805265fa944834dc6e930de2995768806a9d2`, chain 146)
- GenericHarvester (`0x57770c1721eb35509f38210a935c8b1911db7e0e`, chain 999)
- GenericHarvester (`0xca43ecfcdfba1fed003649e946ae6091646b410a`, chain 8453)
- GenericHarvester (`0x0d45b129dc868963025db79a9074ea9c9e32cae4`, chain 43114)
- Getters (`0x120805265fa944834dc6e930de2995768806a9d2`, chain 999)
- Getters (`0xbe65f0f410a72bec163dc65d46c83699e957d588`, chain 8453)
- Getters (`0xf6cc47e981ed5902be382dbe7b54e3696de22dbb`, chain 43114)
- ParallelAccessManager (`0x94ea8800444017695345156319e96bdb1e355f7a`, chain 1)
- ParallelAccessManager (`0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46`, chain 10)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 56)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 100)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 130)
- ParallelAccessManager (`0x7df74bbb6f82ec1bcb1562a30ef5bf5c326e2811`, chain 137)
- ParallelAccessManager (`0x8efb3ded78fbaef2a4efe01e01bbd911e4094b78`, chain 146)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 252)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 999)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 1329)
- ParallelAccessManager (`0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46`, chain 8453)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 9745)
- ParallelAccessManager (`0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46`, chain 42161)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 43114)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 59144)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 80094)
- ParallelAccessManager (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 534352)
- Redeemer (`0xe5c82b4f09fd4d079757e156db44afd2c8032cc8`, chain 146)
- Redeemer (`0xf92ed96c7bec4ad46ff7937cae633c907ebdf594`, chain 999)
- Redeemer (`0xe9fe4720fa99f9b28584da44abb8cf91f15990e8`, chain 8453)
- Redeemer (`0x6efeddf9269c3683ba516cb0e2124fe335f262a2`, chain 43114)
- RewardHandler (`0xfb2d070270e9ffc2db107d0162b47c2ed291e3f7`, chain 146)
- RewardHandler (`0xa5d9caa2ef06d39d5992b5046e2defff6d5cbd18`, chain 999)
- RewardHandler (`0x2b6c7c275404e93a14a05b549af292231d6e4dec`, chain 8453)
- RewardHandler (`0x36da06796fd9d22bcd6287b66a87ffdadb12636c`, chain 43114)
- SavingsNameable (`0xae2fb66d1989ec1684ff095b75d151ae8e403e2e`, chain 146)
- SavingsNameable (`0x769f533139eb1723c41cadec243ce10bc4d400fd`, chain 999)
- SavingsNameable (`0xa65821ffe86e6eb613daa1f70af350c5a21759df`, chain 8453)
- SettersGovernor (`0xc3bef21ea7deb5c34cf33e918c8e28972c8048ed`, chain 146)
- SettersGovernor (`0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7`, chain 999)
- SettersGovernor (`0x90e4ae8ba8c6fd51fced0f9331668b05c7a4ee43`, chain 8453)
- SettersGovernor (`0x5beada21a6b9cb229117b3ea2c0d1594785013a2`, chain 43114)
- SettersGuardian (`0xca43ecfcdfba1fed003649e946ae6091646b410a`, chain 146)
- SettersGuardian (`0xe5c82b4f09fd4d079757e156db44afd2c8032cc8`, chain 8453)
- SettersGuardian (`0xbbc90e685c4a66ebbdc71a3a1437d3111e43fe84`, chain 43114)
- Swapper (`0xa65821ffe86e6eb613daa1f70af350c5a21759df`, chain 146)
- Swapper (`0xfb2d070270e9ffc2db107d0162b47c2ed291e3f7`, chain 8453)
- Swapper (`0x57265a3d7db8f4a4a155eadf6c7326926cac1490`, chain 43114)
- TokenP (`0xe8a2d848fe656e34a6caa35f375b42979e322135`, chain 10)
- TokenP (`0x411dc65548c066fb0f85bf48a72306d321c783bd`, chain 56)
- TokenP (`0xcb3e564293393e0d4f43305a250d4e1716de600b`, chain 100)
- TokenP (`0xcb3e564293393e0d4f43305a250d4e1716de600b`, chain 130)
- TokenP (`0xfefc8635edf0faad83312a713cb67722d049c9bc`, chain 137)
- TokenP (`0xb3dbece41acdd6ad76d037b8da2e53c58826746c`, chain 146)
- TokenP (`0x35c6323da7d0a4be33ada37eca81e03bece0f1c7`, chain 252)
- TokenP (`0x24cef236056834f38e9247a1fff6681dd313d3aa`, chain 999)
- TokenP (`0x411dc65548c066fb0f85bf48a72306d321c783bd`, chain 1329)
- TokenP (`0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9`, chain 8453)
- TokenP (`0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46`, chain 9745)
- TokenP (`0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9`, chain 42161)
- TokenP (`0xcb3e564293393e0d4f43305a250d4e1716de600b`, chain 43114)
- TokenP (`0x35c6323da7d0a4be33ada37eca81e03bece0f1c7`, chain 59144)
- TokenP (`0xcb3e564293393e0d4f43305a250d4e1716de600b`, chain 80094)
- UnnamedContract (`0x9e0dcf7a33bbde6689560c5c807dd2a3df991277`, chain 57073)
- UnnamedContract (`0x9ee1963f05553ef838604dd39403be21cef26aa4`, chain 57073)
- UnnamedContract (`0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec`, chain 57073)
- UnnamedContract (`0xcb3e564293393e0d4f43305a250d4e1716de600b`, chain 57073)
- UnnamedContract (`0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b`, chain 57073)
- UnnamedContract (`0xfd28f108e95f4d41daae9dbfff707d677985998e`, chain 57073)

## Contract Surface Quality

- Logic-topography rows: 143; live-surface rows included: 143 (143 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 132/132 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/108 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 132 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 47 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 37
- Confirmed-live implementations: 132 of 179 unique; 47 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/125
- Verified + Unaudited implementations: 125
- Verified by bytecode match: 0
- Unverified implementations: 54
- Unique implementations: 179
- Raw deployments: 266
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (125)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeableToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 12 deployments: ethereum `0x5208f5de46c25273e2fb8d5a73d605997bc4ca3f`; ethereum `0x62461591ffee0c539be1bb51a22624e6f3815bfb`; ethereum `0x74e3f9d724da6d7e4db8ecab4f18e6ba44f60e30`; ethereum `0x86afa59ff739b5be56ce8a81a424af17b29668e9`; ethereum `0xd4dee6e089969600d3359cdbcd34e3111bc838eb`; ethereum `0xe0a86c3a7038e33cb31531222fae33a51b5022b2`; polygon `0x1b03d006a47df53b440b9a94af88f38f63583342`; polygon `0x4311321f144e2cf24df87deefe79e9c4e232273b`; polygon `0x5e6c853a308e54282aa4c0ceb721a9cdcdf2be85`; polygon `0x7e6bc0dc649f5e48842c881e97666c7e21d0a433`; polygon `0x917b9d8e62739986ec182e0f988c7f938651afd7`; polygon `0xe462df8d4aa7db3aecfe810ec8d1fa4f716bc9a8` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-251294 | `0x78bb4882b77d74ad9b04ab71fe8e61f72595823c` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-251306 | `0x76a9a0062ec6712b99b4f63bd2b4270185759dd5` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-251347 | `0x7b54f3d993d3bca077946034ea710f9c07420c72` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-251307 | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | unichain | unit-251309 | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-251314 | `0x9afdb5a5ec2bbdddaa4573baa25caa4e4e4a2ca9` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-251321 | `0xda818995ddeee3ac36bf492133e1feae1fa377e6` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | fraxtal | unit-251325 | `0x9e79ec4bc3574f2865636aecff44b60a723a9ee7` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-251380 | `0xc3bef21ea7deb5c34cf33e918c8e28972c8048ed` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | sei | unit-251311 | `0x7b54f3d993d3bca077946034ea710f9c07420c72` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | base | unit-251363 | `0x4dde0e308cfb60515218c6ad2df1134fc48531fc` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | plasma | unit-251369 | `0x9e79ec4bc3574f2865636aecff44b60a723a9ee7` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-251328 | `0x4dde0e308cfb60515218c6ad2df1134fc48531fc` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-251337 | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | linea | unit-251355 | `0x9e79ec4bc3574f2865636aecff44b60a723a9ee7` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-251357 | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | ⚠️ Unaudited |
| BridgeableTokenP | operational_periphery | project_anchor | own_supporting | 0 | scroll | unit-251343 | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | ⚠️ Unaudited |
| DiamondCut | unknown | project_anchor | own_supporting | 0 | sonic | unit-251323 | `0xe9fe4720fa99f9b28584da44abb8cf91f15990e8` | ⚠️ Unaudited |
| DiamondCut | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251377 | `0xa65821ffe86e6eb613daa1f70af350c5a21759df` | ⚠️ Unaudited |
| DiamondCut | unknown | project_anchor | own_supporting | 0 | base | unit-251360 | `0x15452454a9735d68df430879b2941316a09295b1` | ⚠️ Unaudited |
| DiamondCut | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251335 | `0x657acb8a3bf9383e561565d422ea9b9a90ce0052` | ⚠️ Unaudited |
| DiamondInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 5 deployments: sonic `0xbe65f0f410a72bec163dc65d46c83699e957d588`; hyperliquid `0x056566077da53b0a349af9b9bdbfa2658ccc2c3f`; hyperliquid `0x8b899796b4a442e7723e02f8b5b65a39f27edaf1`; base `0x3997f0dbd1e2cfc4eccf60c31366930dcf2298d7`; avalanche `0x506ba37aa8e265be445913b9c4080852277f3c5a` | ⚠️ Unaudited |
| DiamondLoupe | unknown | project_anchor | own_supporting | 0 | sonic | unit-251316 | `0x2b6c7c275404e93a14a05b549af292231d6e4dec` | ⚠️ Unaudited |
| DiamondLoupe | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251379 | `0xbefbae2330186f031b469e26283acc66bb5f8826` | ⚠️ Unaudited |
| DiamondLoupe | unknown | project_anchor | own_supporting | 0 | base | unit-251361 | `0x24cef236056834f38e9247a1fff6681dd313d3aa` | ⚠️ Unaudited |
| DiamondLoupe | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251330 | `0x23d491aa7c0972087f8a607f6f4c7106a02ba95d` | ⚠️ Unaudited |
| DiamondProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251372 | `0x1250304f66404cd153fa39388ddcdaec7e0f1707` | ⚠️ Unaudited |
| DiamondProxy | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251332 | `0x41d58951cbd12d4ef49b0437897677bbf5547c80` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 0 | scroll | unit-251342 | `0x9ee1963f05553ef838604dd39403be21cef26aa4` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | optimism | unit-251383 | 2 deployments: optimism `0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9`; optimism `0x4def531c3060686948f00ecc7504f2e0b71eda14` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | bsc | unit-251405 | 2 deployments: bsc `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec`; bsc `0xc0e62f863bbd9dab9d2f79e4ecc248e60c4fe3fa` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | gnosis | unit-251386 | 2 deployments: gnosis `0x9e0dcf7a33bbde6689560c5c807dd2a3df991277`; gnosis `0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | unichain | unit-251388 | 2 deployments: unichain `0x9e0dcf7a33bbde6689560c5c807dd2a3df991277`; unichain `0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | polygon | unit-251391 | 2 deployments: polygon `0x09f3964874d3c8494f2e98e9e003e53c2750ab72`; polygon `0xc15fd01a21e8f6625f709b16f6b3562d2848da5f` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | sonic | unit-251393 | 2 deployments: sonic `0x2cb56df31b909854b01d4b1ead5676cf90e885e7`; sonic `0x4dde0e308cfb60515218c6ad2df1134fc48531fc` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-251397 | 2 deployments: fraxtal `0x10eb3f443baa258b3417d6c318f7865ad61b539b`; fraxtal `0x46b053ce47f16390574bb8f54caccd04c1e3faf2` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-251417 | 2 deployments: hyperliquid `0x15452454a9735d68df430879b2941316a09295b1`; hyperliquid `0x3997f0dbd1e2cfc4eccf60c31366930dcf2298d7` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | sei | unit-251390 | 2 deployments: sei `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec`; sei `0xc0e62f863bbd9dab9d2f79e4ecc248e60c4fe3fa` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | base | unit-251412 | 2 deployments: base `0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182`; base `0xb3dbece41acdd6ad76d037b8da2e53c58826746c` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | plasma | unit-251415 | 2 deployments: plasma `0x10eb3f443baa258b3417d6c318f7865ad61b539b`; plasma `0x46b053ce47f16390574bb8f54caccd04c1e3faf2` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-251400 | 2 deployments: arbitrum `0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182`; arbitrum `0xb3dbece41acdd6ad76d037b8da2e53c58826746c` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | avalanche | unit-251403 | 2 deployments: avalanche `0x9e0dcf7a33bbde6689560c5c807dd2a3df991277`; avalanche `0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | linea | unit-251406 | 2 deployments: linea `0x10eb3f443baa258b3417d6c318f7865ad61b539b`; linea `0x46b053ce47f16390574bb8f54caccd04c1e3faf2` | ⚠️ Unaudited |
| FlashParallelToken | unknown | project_anchor | own_supporting | 1 | berachain | unit-251409 | 2 deployments: berachain `0x9e0dcf7a33bbde6689560c5c807dd2a3df991277`; berachain `0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-251289 | `0x36da06796fd9d22bcd6287b66a87ffdadb12636c` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | project_anchor | own_supporting | 0 | sonic | unit-251315 | `0x120805265fa944834dc6e930de2995768806a9d2` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | project_anchor | own_supporting | 0 | hyperliquid | unit-251375 | `0x57770c1721eb35509f38210a935c8b1911db7e0e` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | project_anchor | own_supporting | 0 | base | unit-251366 | `0xca43ecfcdfba1fed003649e946ae6091646b410a` | ⚠️ Unaudited |
| GenericHarvester | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-251329 | `0x0d45b129dc868963025db79a9074ea9c9e32cae4` | ⚠️ Unaudited |
| Getters | unknown | project_anchor | own_supporting | 0 | sonic | unit-251318 | `0x90e4ae8ba8c6fd51fced0f9331668b05c7a4ee43` | ⚠️ Unaudited |
| Getters | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251371 | `0x120805265fa944834dc6e930de2995768806a9d2` | ⚠️ Unaudited |
| Getters | unknown | project_anchor | own_supporting | 0 | base | unit-251365 | `0xbe65f0f410a72bec163dc65d46c83699e957d588` | ⚠️ Unaudited |
| Getters | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251339 | `0xf6cc47e981ed5902be382dbe7b54e3696de22dbb` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x25fc7ffa8f9da3582a36633d04804f0004706f9b` | ⚠️ Unaudited |
| MainFeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: polygon `0x90337e484b1cb02132fc150d3afa262147348545`; polygon `0xb4af56f42e19f6555611c5b2f5075eecd17cbaa1`; base `0x5d49c8b8cc691533742602d6ab3127904959b7e3` | ⚠️ Unaudited |
| MIMOVaultActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: polygon `0x1d58251e035654fdd4b8ca53c0bb06fb4af4c595`; polygon `0x6ae3cf8481ba4d6876d70f64d7fed079afd2d4fe`; polygon `0xa8b25d675e793521f24de3a07c35f79496c13546`; polygon `0xde91eb8206c228f4208c34510cf0c61c9302a434`; polygon `0xeb259d5778942b5626bd2d3de0616b4644b66d4b`; polygon `0xf6abf8a89b3da7c254bb3207e2eba9810bc51f58` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-251295 | `0x94ea8800444017695345156319e96bdb1e355f7a` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | optimism | unit-251305 | `0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | bsc | unit-251348 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | gnosis | unit-251308 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | unichain | unit-251310 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | polygon | unit-251313 | `0x7df74bbb6f82ec1bcb1562a30ef5bf5c326e2811` | ⚠️ Unaudited |
| ParallelAccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x8fcf9118fdd359f6277cdd143c2da206e64140f3`; sonic `0xa7eb076f57960e265b91514c03d1d1281055a75c` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | sonic | unit-251317 | `0x8efb3ded78fbaef2a4efe01e01bbd911e4094b78` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | fraxtal | unit-251326 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-251382 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | sei | unit-251312 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | base | unit-251359 | `0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | plasma | unit-251370 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-251327 | `0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | avalanche | unit-251340 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | linea | unit-251356 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | berachain | unit-251358 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| ParallelAccessManager | governance | project_anchor | own_supporting | 0 | scroll | unit-251346 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| PeripheralMigrationContract | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c68850e18eacd4ea7ca2998b6bbed9cf55316cb` | ⚠️ Unaudited |
| PeripheralPRL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 5 deployments: optimism `0xfd28f108e95f4d41daae9dbfff707d677985998e`; polygon `0x7790dd69aa10ed3f1271e41cd7222d2a7d2d5948`; sonic `0xfd28f108e95f4d41daae9dbfff707d677985998e`; base `0xfd28f108e95f4d41daae9dbfff707d677985998e`; arbitrum `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ⚠️ Unaudited |
| Redeemer | unknown | project_anchor | own_supporting | 0 | sonic | unit-251322 | `0xe5c82b4f09fd4d079757e156db44afd2c8032cc8` | ⚠️ Unaudited |
| Redeemer | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251381 | `0xf92ed96c7bec4ad46ff7937cae633c907ebdf594` | ⚠️ Unaudited |
| Redeemer | unknown | project_anchor | own_supporting | 0 | base | unit-251368 | `0xe9fe4720fa99f9b28584da44abb8cf91f15990e8` | ⚠️ Unaudited |
| Redeemer | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251336 | `0x6efeddf9269c3683ba516cb0e2124fe335f262a2` | ⚠️ Unaudited |
| RewardHandler | unknown | project_anchor | own_supporting | 0 | sonic | unit-251324 | `0xfb2d070270e9ffc2db107d0162b47c2ed291e3f7` | ⚠️ Unaudited |
| RewardHandler | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251376 | `0xa5d9caa2ef06d39d5992b5046e2defff6d5cbd18` | ⚠️ Unaudited |
| RewardHandler | unknown | project_anchor | own_supporting | 0 | base | unit-251362 | `0x2b6c7c275404e93a14a05b549af292231d6e4dec` | ⚠️ Unaudited |
| RewardHandler | unknown | project_anchor | own_supporting | 0 | avalanche | unit-251331 | `0x36da06796fd9d22bcd6287b66a87ffdadb12636c` | ⚠️ Unaudited |
| RewardMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: polygon `0x7b54f3d993d3bca077946034ea710f9c07420c72`; base `0x13e867f55043302925971e88ab8fab704241a96b` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 1 | sonic | unit-251395 | 2 deployments: sonic `0xae2fb66d1989ec1684ff095b75d151ae8e403e2e`; sonic `0xe8a3da6f5ed1cf04c58ac7f6a7383641e877517b` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-251418 | 2 deployments: hyperliquid `0x769f533139eb1723c41cadec243ce10bc4d400fd`; hyperliquid `0x9b3a8f7cec208e247d97dee13313690977e24459` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 1 | base | unit-251411 | 2 deployments: base `0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7`; base `0xa65821ffe86e6eb613daa1f70af350c5a21759df` | ⚠️ Unaudited |
| SavingsNameable | unknown | project_anchor | own_supporting | 1 | avalanche | unit-251401 | 2 deployments: avalanche `0x3dde241c6263eb0cdf2e09f77cbcf90028a9a6c3`; avalanche `0x9d92c21205383651610f90722131655a5b8ed3e0` | ⚠️ Unaudited |
| SavingsNameable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x645feabb38283d13249845881778b6c24a25884d` | ⚠️ Unaudited |
| SettersGovernor | governance | project_anchor | own_supporting | 0 | sonic | unit-251319 | `0xc3bef21ea7deb5c34cf33e918c8e28972c8048ed` | ⚠️ Unaudited |
| SettersGovernor | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251374 | `0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7` | ⚠️ Unaudited |
| SettersGovernor | governance | project_anchor | own_supporting | 0 | base | unit-251364 | `0x90e4ae8ba8c6fd51fced0f9331668b05c7a4ee43` | ⚠️ Unaudited |
| SettersGovernor | governance | project_anchor | own_supporting | 0 | avalanche | unit-251334 | `0x5beada21a6b9cb229117b3ea2c0d1594785013a2` | ⚠️ Unaudited |
| SettersGuardian | governance | project_anchor | own_supporting | 0 | sonic | unit-251320 | `0xca43ecfcdfba1fed003649e946ae6091646b410a` | ⚠️ Unaudited |
| SettersGuardian | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251378 | `0xae2fb66d1989ec1684ff095b75d151ae8e403e2e` | ⚠️ Unaudited |
| SettersGuardian | governance | project_anchor | own_supporting | 0 | base | unit-251367 | `0xe5c82b4f09fd4d079757e156db44afd2c8032cc8` | ⚠️ Unaudited |
| SettersGuardian | governance | project_anchor | own_supporting | 0 | avalanche | unit-251338 | `0xbbc90e685c4a66ebbdc71a3a1437d3111e43fe84` | ⚠️ Unaudited |
| SideChainFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2f77c2fe829ecc1cc4fe891ca05d121971908574`; avalanche `0x7d2c6c944907ead0be1b6c84c9cfe3db4d4907c5` | ⚠️ Unaudited |
| sPRL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0xead729472f82e5ec2ff4e691d67633077c1b5901`; polygon `0xdb7be3a50bdf5641757ebea38e8014e1f0aa9475`; sonic `0x7df74bbb6f82ec1bcb1562a30ef5bf5c326e2811`; base `0x01fa35fde0e813e2d6687660a74a313d8d922e48`; base `0xefc1309b67a52c5dfc2588bfc2d97a66afc4d2ce` | ⚠️ Unaudited |
| sPRL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8a2d848fe656e34a6caa35f375b42979e322135` | ⚠️ Unaudited |
| sPRL2V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb22f5edbc62adcc093307025b8fdf75a0aa00e24` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 1 | sonic | unit-251394 | 2 deployments: sonic `0xa65821ffe86e6eb613daa1f70af350c5a21759df`; sonic `0xbefbae2330186f031b469e26283acc66bb5f8826` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-251373 | `0x1b2741db9f46a0411852e4cc28ddc476851b5179` | ⚠️ Unaudited |
| Swapper | unknown | project_anchor | own_supporting | 1 | base | unit-251413 | 2 deployments: base `0xc3bef21ea7deb5c34cf33e918c8e28972c8048ed`; base `0xfb2d070270e9ffc2db107d0162b47c2ed291e3f7` | ⚠️ Unaudited |
| Swapper | adapter | project_anchor | own_supporting | 0 | avalanche | unit-251333 | `0x57265a3d7db8f4a4a155eadf6c7326926cac1490` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | optimism | unit-251384 | 2 deployments: optimism `0x90337e484b1cb02132fc150d3afa262147348545`; optimism `0xe8a2d848fe656e34a6caa35f375b42979e322135` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | bsc | unit-251404 | 2 deployments: bsc `0x048c4e07d170eedee8772ca76aee1c4e2d133d5c`; bsc `0x411dc65548c066fb0f85bf48a72306d321c783bd` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | gnosis | unit-251385 | 2 deployments: gnosis `0x9ee1963f05553ef838604dd39403be21cef26aa4`; gnosis `0xcb3e564293393e0d4f43305a250d4e1716de600b` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | unichain | unit-251387 | 2 deployments: unichain `0x9ee1963f05553ef838604dd39403be21cef26aa4`; unichain `0xcb3e564293393e0d4f43305a250d4e1716de600b` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | polygon | unit-251392 | 2 deployments: polygon `0x1250304f66404cd153fa39388ddcdaec7e0f1707`; polygon `0xfefc8635edf0faad83312a713cb67722d049c9bc` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | sonic | unit-251396 | 2 deployments: sonic `0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182`; sonic `0xb3dbece41acdd6ad76d037b8da2e53c58826746c` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-251398 | 2 deployments: fraxtal `0x35c6323da7d0a4be33ada37eca81e03bece0f1c7`; fraxtal `0x8fcf9118fdd359f6277cdd143c2da206e64140f3` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-251416 | 2 deployments: hyperliquid `0x24cef236056834f38e9247a1fff6681dd313d3aa`; hyperliquid `0xbe65f0f410a72bec163dc65d46c83699e957d588` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | sei | unit-251389 | 2 deployments: sei `0x048c4e07d170eedee8772ca76aee1c4e2d133d5c`; sei `0x411dc65548c066fb0f85bf48a72306d321c783bd` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | base | unit-251410 | 2 deployments: base `0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9`; base `0x76a9a0062ec6712b99b4f63bd2b4270185759dd5` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | plasma | unit-251414 | 2 deployments: plasma `0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46`; plasma `0xc2f8b5d893217462ae9c9879c9285a5a3aabcb8f` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-251399 | 2 deployments: arbitrum `0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9`; arbitrum `0x76a9a0062ec6712b99b4f63bd2b4270185759dd5` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | avalanche | unit-251402 | 2 deployments: avalanche `0x9ee1963f05553ef838604dd39403be21cef26aa4`; avalanche `0xcb3e564293393e0d4f43305a250d4e1716de600b` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | linea | unit-251407 | 2 deployments: linea `0x35c6323da7d0a4be33ada37eca81e03bece0f1c7`; linea `0x8fcf9118fdd359f6277cdd143c2da206e64140f3` | ⚠️ Unaudited |
| TokenP | unknown | project_anchor | own_supporting | 1 | berachain | unit-251408 | 2 deployments: berachain `0x9ee1963f05553ef838604dd39403be21cef26aa4`; berachain `0xcb3e564293393e0d4f43305a250d4e1716de600b` | ⚠️ Unaudited |
| VaultsCore | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 13 deployments: ethereum `0x173ae6283a717b6cdd5491eac5f82c082a8c674b`; ethereum `0x4fbb33fe9fc784ab5a86dc19cce4ecd29c20cd46`; ethereum `0x68e88c802f146ead2f99f3a91fb880d1a2509672`; ethereum `0x78c48a7d7fc69735fdab448fe6068bba44a920e6`; ethereum `0x917b9d8e62739986ec182e0f988c7f938651afd7`; ethereum `0xe26348d30694aa7e879b9335252362df3df93204`; polygon `0x0a9202c6417a7b6b166e7f7fe2719b09261b400f`; polygon `0x6cffe4caacddfdc641823c23f49ec71158acd8c5`; polygon `0x78c48a7d7fc69735fdab448fe6068bba44a920e6`; polygon `0x9912c16db85d6075df6f0725a08b95f63a11a172`; polygon `0xc0459eff90be3dcd1ada71e1e8bdb7619a16c1a4`; polygon `0xcababc1feb7c5298f69b635099d75975ad5e6e5f`; polygon `0xfaee16d1d150107bb19bff0f5c2e302ab76b5711` | ⚠️ Unaudited |
| VaultsCoreState | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 6 deployments: ethereum `0x5362a6bf52b07c3c6a795ab03675f041a3e3de64`; ethereum `0x963d9858651fa21e903e83c5d985fc74f6745249`; ethereum `0xdb75531e12ca4bb6cd5cfe77f10522b08806386f`; polygon `0x02c69c480ab4a35f2c7117e2c17c904cd76f25d8`; polygon `0x0f3acbc30da85612588c2e2dfd81ac667b662b48`; polygon `0xfad382ee9b8229fb9b05df9f9391bac5dd81f346` | ⚠️ Unaudited |
| VaultsV2Feed | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | 2 deployments: sei `0xd8cc2a51556da84b5db309e86f30ff98b5309862`; sei `0xeb197439d1425f3129f01f7763ec511df2489095` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (54)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251287 | `0x0d45b129dc868963025db79a9074ea9c9e32cae4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251288 | `0x1bb46fc55e3fd91ca0f162dcc0b3ef574c8ff97e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251290 | `0x41d58951cbd12d4ef49b0437897677bbf5547c80` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251291 | `0x4738682c1d8981ed9583b58f619d91742ad8e74f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251292 | `0x506ba37aa8e265be445913b9c4080852277f3c5a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251293 | `0x6efeddf9269c3683ba516cb0e2124fe335f262a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251296 | `0x9b3a8f7cec208e247d97dee13313690977e24459` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251297 | `0xa19c5d1013a8682ac76206a085ec24ac89f7c025` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251298 | `0xa360e5ad9f17caff53715346888aa0d13541c2f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251299 | `0xa9c21cf291ad935e0c9b05a55a42254fb159181d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251300 | `0xad58fc13a682a121e5fe2f8e45d4d988a7e51b0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251301 | `0xc743bede8412228b42ae755cd64a33cd3ae4a92f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251302 | `0xc9b6279baa19dbb8bcc3250c89caa093aaba0bfc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251303 | `0xd8cc2a51556da84b5db309e86f30ff98b5309862` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251304 | `0xeb197439d1425f3129f01f7763ec511df2489095` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x098e37a2bfac675cf5a5c21d4f10e391d502d8b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e77331a61e05737f41c379c5c7145df802c64ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4dee6e089969600d3359cdbcd34e3111bc838eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x028c3e3a0984c441c5205cfd0c39a6cf244ee696` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0f2e09aae3290c1af1d6a85acb0863c094752db5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x19cec11555d8ee91bbe25a38652e3d63884e1cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x457ee3ab077bd58d32e651d07bc3c4383039af55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5d39634f877bb00da5d284de20de6ca1bd55a5ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6cd1948f6ae0b49f7778167ffa94d7d148c8a307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8f1d81c0af5675e6ade9db1dbf03750310b0c2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9d4a036cb8823f91e80eaac39295a1a302ca5f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa5b6c0c6afbfb5c8808ec3ad3db9098a6b82433a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb67749bea8d163721019054c3a99dabf32a3b594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd561e7d133c78f8e28072a5a4b5fd7704331fb3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd5ef1d8c08ed5b9fbe9b1ff806defd9ca985d8b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe9b09cc151fcc7f6a1347098ed305b02f46b17b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0xf6abf8a89b3da7c254bb3207e2eba9810bc51f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xca43ecfcdfba1fed003649e946ae6091646b410a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0003f636a8d50d15ccb7ff243cafb0026f82ad9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x153bf462a553c2e1d45d9f5cad4e70e9a362caee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2907dda7db8e16076467448596afa625a81ad7bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b822194bea84cbf5b52956eb3435e58d20abd1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2c85d2e8ecfabc0710ce87ca2c5278ae26733a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6c0f00509c90414879471b1a84475f40e46f79ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2ebf74746eed7d586b3b9696511a553210d1b09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf81545d8afbab3569b735eea3a3253c739b17e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb902fb75d15072d913521b602bbda6833cd7b7fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc512e49c7bc99c8d03b4f5eb81676c65a80fef0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xddab96865ac205555784abdc24d0e3b2e34f3b3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa360e5ad9f17caff53715346888aa0d13541c2f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251349 | `0x9e0dcf7a33bbde6689560c5c807dd2a3df991277` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251350 | `0x9ee1963f05553ef838604dd39403be21cef26aa4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251351 | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251352 | `0xcb3e564293393e0d4f43305a250d4e1716de600b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251353 | `0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-251354 | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251341 | `0x9e0dcf7a33bbde6689560c5c807dd2a3df991277` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251344 | `0xcb3e564293393e0d4f43305a250d4e1716de600b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-251345 | `0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 144
- Live contracts: 79
- Unknown liveness contracts: 65
- Source-verified contracts: 116
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: contamination review=4, exact address book overlap=77, source verified unclassified=35, unverified unclassified=28

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | exact address book overlap | ERC1967Proxy<br>`0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| arbitrum | exact address book overlap | ERC1967Proxy<br>`0x76a9a0062ec6712b99b4f63bd2b4270185759dd5` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| arbitrum | exact address book overlap | FlashParallelToken<br>`0xb3dbece41acdd6ad76d037b8da2e53c58826746c` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| arbitrum | exact address book overlap | TokenP<br>`0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| avalanche | exact address book overlap | ERC1967Proxy<br>`0x9d92c21205383651610f90722131655a5b8ed3e0` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| avalanche | exact address book overlap | ERC1967Proxy<br>`0x9e0dcf7a33bbde6689560c5c807dd2a3df991277` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| avalanche | exact address book overlap | ERC1967Proxy<br>`0x9ee1963f05553ef838604dd39403be21cef26aa4` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| avalanche | exact address book overlap | FlashParallelToken<br>`0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| avalanche | exact address book overlap | TokenP<br>`0xcb3e564293393e0d4f43305a250d4e1716de600b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| avalanche | source verified unclassified | SideChainFeeCollector<br>`0x7d2c6c944907ead0be1b6c84c9cfe3db4d4907c5` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | exact address book overlap | DiamondProxy<br>`0xc3bef21ea7deb5c34cf33e918c8e28972c8048ed` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | exact address book overlap | ERC1967Proxy<br>`0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | exact address book overlap | ERC1967Proxy<br>`0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | exact address book overlap | ERC1967Proxy<br>`0x76a9a0062ec6712b99b4f63bd2b4270185759dd5` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | exact address book overlap | FlashParallelToken<br>`0xb3dbece41acdd6ad76d037b8da2e53c58826746c` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | exact address book overlap | SavingsNameable<br>`0xa65821ffe86e6eb613daa1f70af350c5a21759df` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | exact address book overlap | Swapper<br>`0xfb2d070270e9ffc2db107d0162b47c2ed291e3f7` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | exact address book overlap | TokenP<br>`0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | source verified unclassified | MainFeeDistributor<br>`0x5d49c8b8cc691533742602d6ab3127904959b7e3` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | source verified unclassified | RewardMerkleDistributor<br>`0x13e867f55043302925971e88ab8fab704241a96b` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | source verified unclassified | sPRL1<br>`0xefc1309b67a52c5dfc2588bfc2d97a66afc4d2ce` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | source verified unclassified | sPRL2V2<br>`0xb22f5edbc62adcc093307025b8fdf75a0aa00e24` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0x0003f636a8d50d15ccb7ff243cafb0026f82ad9f` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0x153bf462a553c2e1d45d9f5cad4e70e9a362caee` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0x2907dda7db8e16076467448596afa625a81ad7bf` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0x2b822194bea84cbf5b52956eb3435e58d20abd1f` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0x2c85d2e8ecfabc0710ce87ca2c5278ae26733a85` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0x6c0f00509c90414879471b1a84475f40e46f79ab` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0xa2ebf74746eed7d586b3b9696511a553210d1b09` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0xaf81545d8afbab3569b735eea3a3253c739b17e1` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0xb902fb75d15072d913521b602bbda6833cd7b7fc` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0xc512e49c7bc99c8d03b4f5eb81676c65a80fef0e` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| base | unverified unclassified | UnnamedContract<br>`0xddab96865ac205555784abdc24d0e3b2e34f3b3c` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| berachain | exact address book overlap | ERC1967Proxy<br>`0x9e0dcf7a33bbde6689560c5c807dd2a3df991277` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| berachain | exact address book overlap | ERC1967Proxy<br>`0x9ee1963f05553ef838604dd39403be21cef26aa4` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| berachain | exact address book overlap | FlashParallelToken<br>`0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| berachain | exact address book overlap | TokenP<br>`0xcb3e564293393e0d4f43305a250d4e1716de600b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| bsc | exact address book overlap | ERC1967Proxy<br>`0x048c4e07d170eedee8772ca76aee1c4e2d133d5c` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| bsc | exact address book overlap | ERC1967Proxy<br>`0xc0e62f863bbd9dab9d2f79e4ecc248e60c4fe3fa` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| bsc | exact address book overlap | FlashParallelToken<br>`0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| bsc | exact address book overlap | TokenP<br>`0x411dc65548c066fb0f85bf48a72306d321c783bd` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| ethereum | source verified unclassified | BridgeableToken<br>`0x5208f5de46c25273e2fb8d5a73d605997bc4ca3f` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| ethereum | source verified unclassified | BridgeableToken<br>`0x62461591ffee0c539be1bb51a22624e6f3815bfb` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| ethereum | source verified unclassified | BridgeableToken<br>`0x86afa59ff739b5be56ce8a81a424af17b29668e9` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| ethereum | source verified unclassified | BridgeableToken<br>`0xe0a86c3a7038e33cb31531222fae33a51b5022b2` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| ethereum | source verified unclassified | VaultsCore<br>`0x4fbb33fe9fc784ab5a86dc19cce4ecd29c20cd46` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| ethereum | source verified unclassified | VaultsCore<br>`0x68e88c802f146ead2f99f3a91fb880d1a2509672` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| ethereum | source verified unclassified | VaultsCore<br>`0x78c48a7d7fc69735fdab448fe6068bba44a920e6` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| ethereum | source verified unclassified | VaultsCore<br>`0x917b9d8e62739986ec182e0f988c7f938651afd7` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| ethereum | source verified unclassified | VaultsCoreState<br>`0x5362a6bf52b07c3c6a795ab03675f041a3e3de64` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| fraxtal | exact address book overlap | ERC1967Proxy<br>`0x46b053ce47f16390574bb8f54caccd04c1e3faf2` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| fraxtal | exact address book overlap | ERC1967Proxy<br>`0x8fcf9118fdd359f6277cdd143c2da206e64140f3` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| fraxtal | exact address book overlap | FlashParallelToken<br>`0x10eb3f443baa258b3417d6c318f7865ad61b539b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| fraxtal | exact address book overlap | TokenP<br>`0x35c6323da7d0a4be33ada37eca81e03bece0f1c7` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| gnosis | exact address book overlap | ERC1967Proxy<br>`0x9e0dcf7a33bbde6689560c5c807dd2a3df991277` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| gnosis | exact address book overlap | ERC1967Proxy<br>`0x9ee1963f05553ef838604dd39403be21cef26aa4` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| gnosis | exact address book overlap | FlashParallelToken<br>`0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| gnosis | exact address book overlap | TokenP<br>`0xcb3e564293393e0d4f43305a250d4e1716de600b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | contamination review | DiamondInitializer<br>`0x056566077da53b0a349af9b9bdbfa2658ccc2c3f` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | contamination review | SettersGuardian<br>`0xae2fb66d1989ec1684ff095b75d151ae8e403e2e` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | contamination review | Swapper<br>`0x1b2741db9f46a0411852e4cc28ddc476851b5179` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | DiamondCut<br>`0xa65821ffe86e6eb613daa1f70af350c5a21759df` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | DiamondLoupe<br>`0xbefbae2330186f031b469e26283acc66bb5f8826` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | ERC1967Proxy<br>`0x15452454a9735d68df430879b2941316a09295b1` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | ERC1967Proxy<br>`0x9b3a8f7cec208e247d97dee13313690977e24459` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | ERC1967Proxy<br>`0xbe65f0f410a72bec163dc65d46c83699e957d588` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | FlashParallelToken<br>`0x3997f0dbd1e2cfc4eccf60c31366930dcf2298d7` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | Getters<br>`0x120805265fa944834dc6e930de2995768806a9d2` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | Redeemer<br>`0xf92ed96c7bec4ad46ff7937cae633c907ebdf594` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | RewardHandler<br>`0xa5d9caa2ef06d39d5992b5046e2defff6d5cbd18` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | SavingsNameable<br>`0x769f533139eb1723c41cadec243ce10bc4d400fd` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | SettersGovernor<br>`0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | exact address book overlap | TokenP<br>`0x24cef236056834f38e9247a1fff6681dd313d3aa` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | source verified unclassified | DiamondInitializer<br>`0x8b899796b4a442e7723e02f8b5b65a39f27edaf1` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | source verified unclassified | SideChainFeeCollector<br>`0x2f77c2fe829ecc1cc4fe891ca05d121971908574` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xca43ecfcdfba1fed003649e946ae6091646b410a` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| linea | exact address book overlap | ERC1967Proxy<br>`0x46b053ce47f16390574bb8f54caccd04c1e3faf2` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| linea | exact address book overlap | ERC1967Proxy<br>`0x8fcf9118fdd359f6277cdd143c2da206e64140f3` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| linea | exact address book overlap | FlashParallelToken<br>`0x10eb3f443baa258b3417d6c318f7865ad61b539b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| linea | exact address book overlap | TokenP<br>`0x35c6323da7d0a4be33ada37eca81e03bece0f1c7` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| optimism | exact address book overlap | ERC1967Proxy<br>`0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| optimism | exact address book overlap | ERC1967Proxy<br>`0x90337e484b1cb02132fc150d3afa262147348545` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| optimism | exact address book overlap | FlashParallelToken<br>`0x4def531c3060686948f00ecc7504f2e0b71eda14` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| optimism | exact address book overlap | TokenP<br>`0xe8a2d848fe656e34a6caa35f375b42979e322135` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| plasma | exact address book overlap | ERC1967Proxy<br>`0x46b053ce47f16390574bb8f54caccd04c1e3faf2` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| plasma | exact address book overlap | ERC1967Proxy<br>`0xc2f8b5d893217462ae9c9879c9285a5a3aabcb8f` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| plasma | exact address book overlap | FlashParallelToken<br>`0x10eb3f443baa258b3417d6c318f7865ad61b539b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| plasma | exact address book overlap | TokenP<br>`0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| polygon | contamination review | MIMOVaultActions<br>`0x1d58251e035654fdd4b8ca53c0bb06fb4af4c595` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | BridgeableToken<br>`0x1b03d006a47df53b440b9a94af88f38f63583342` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | BridgeableToken<br>`0x4311321f144e2cf24df87deefe79e9c4e232273b` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | BridgeableToken<br>`0x5e6c853a308e54282aa4c0ceb721a9cdcdf2be85` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | BridgeableToken<br>`0x7e6bc0dc649f5e48842c881e97666c7e21d0a433` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | BridgeableToken<br>`0x917b9d8e62739986ec182e0f988c7f938651afd7` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | MIMOVaultActions<br>`0x6ae3cf8481ba4d6876d70f64d7fed079afd2d4fe` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | MIMOVaultActions<br>`0xa8b25d675e793521f24de3a07c35f79496c13546` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | MIMOVaultActions<br>`0xeb259d5778942b5626bd2d3de0616b4644b66d4b` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | MIMOVaultActions<br>`0xf6abf8a89b3da7c254bb3207e2eba9810bc51f58` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | VaultsCore<br>`0x6cffe4caacddfdc641823c23f49ec71158acd8c5` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | VaultsCore<br>`0x78c48a7d7fc69735fdab448fe6068bba44a920e6` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | VaultsCore<br>`0x9912c16db85d6075df6f0725a08b95f63a11a172` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | VaultsCore<br>`0xc0459eff90be3dcd1ada71e1e8bdb7619a16c1a4` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | VaultsCore<br>`0xfaee16d1d150107bb19bff0f5c2e302ab76b5711` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | source verified unclassified | VaultsCoreState<br>`0x0f3acbc30da85612588c2e2dfd81ac667b662b48` | non_address_book | unknown | unknown | verified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | unverified unclassified | UnnamedContract<br>`0x098e37a2bfac675cf5a5c21d4f10e391d502d8b6` | non_address_book | unknown | unknown | unverified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | unverified unclassified | UnnamedContract<br>`0x9e77331a61e05737f41c379c5c7145df802c64ef` | non_address_book | unknown | unknown | unverified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd4dee6e089969600d3359cdbcd34e3111bc838eb` | non_address_book | unknown | unknown | unverified | n/a | `0x3676b6ed4ae0c9ce3e0034510719fdf5fd585d55` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0x1250304f66404cd153fa39388ddcdaec7e0f1707` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| polygon | exact address book overlap | ERC1967Proxy<br>`0xc15fd01a21e8f6625f709b16f6b3562d2848da5f` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| polygon | exact address book overlap | FlashParallelToken<br>`0x09f3964874d3c8494f2e98e9e003e53c2750ab72` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| polygon | exact address book overlap | TokenP<br>`0xfefc8635edf0faad83312a713cb67722d049c9bc` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| polygon | source verified unclassified | MainFeeDistributor<br>`0xb4af56f42e19f6555611c5b2f5075eecd17cbaa1` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| polygon | source verified unclassified | MIMOVaultActions<br>`0xde91eb8206c228f4208c34510cf0c61c9302a434` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| polygon | source verified unclassified | ParallelAccessManager<br>`0x8fcf9118fdd359f6277cdd143c2da206e64140f3` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sei | exact address book overlap | ERC1967Proxy<br>`0x048c4e07d170eedee8772ca76aee1c4e2d133d5c` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sei | exact address book overlap | ERC1967Proxy<br>`0xc0e62f863bbd9dab9d2f79e4ecc248e60c4fe3fa` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sei | exact address book overlap | FlashParallelToken<br>`0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sei | exact address book overlap | TokenP<br>`0x411dc65548c066fb0f85bf48a72306d321c783bd` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | exact address book overlap | DiamondProxy<br>`0xbefbae2330186f031b469e26283acc66bb5f8826` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | exact address book overlap | ERC1967Proxy<br>`0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | exact address book overlap | ERC1967Proxy<br>`0x2cb56df31b909854b01d4b1ead5676cf90e885e7` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | exact address book overlap | ERC1967Proxy<br>`0xe8a3da6f5ed1cf04c58ac7f6a7383641e877517b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | exact address book overlap | FlashParallelToken<br>`0x4dde0e308cfb60515218c6ad2df1134fc48531fc` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | exact address book overlap | SavingsNameable<br>`0xae2fb66d1989ec1684ff095b75d151ae8e403e2e` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | exact address book overlap | Swapper<br>`0xa65821ffe86e6eb613daa1f70af350c5a21759df` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | exact address book overlap | TokenP<br>`0xb3dbece41acdd6ad76d037b8da2e53c58826746c` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | source verified unclassified | ParallelAccessManager<br>`0xa7eb076f57960e265b91514c03d1d1281055a75c` | non_address_book | unknown | unknown | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0x028c3e3a0984c441c5205cfd0c39a6cf244ee696` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0x0f2e09aae3290c1af1d6a85acb0863c094752db5` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0x19cec11555d8ee91bbe25a38652e3d63884e1cc9` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0x457ee3ab077bd58d32e651d07bc3c4383039af55` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0x5d39634f877bb00da5d284de20de6ca1bd55a5ac` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0x6cd1948f6ae0b49f7778167ffa94d7d148c8a307` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0x8f1d81c0af5675e6ade9db1dbf03750310b0c2e3` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0x9d4a036cb8823f91e80eaac39295a1a302ca5f9f` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0xa5b6c0c6afbfb5c8808ec3ad3db9098a6b82433a` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0xb67749bea8d163721019054c3a99dabf32a3b594` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd561e7d133c78f8e28072a5a4b5fd7704331fb3b` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0xd5ef1d8c08ed5b9fbe9b1ff806defd9ca985d8b9` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| sonic | unverified unclassified | UnnamedContract<br>`0xe9b09cc151fcc7f6a1347098ed305b02f46b17b8` | non_address_book | unknown | unknown | unverified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| unichain | exact address book overlap | ERC1967Proxy<br>`0x9e0dcf7a33bbde6689560c5c807dd2a3df991277` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| unichain | exact address book overlap | ERC1967Proxy<br>`0x9ee1963f05553ef838604dd39403be21cef26aa4` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| unichain | exact address book overlap | FlashParallelToken<br>`0xe23b5ded6f7b7cb56ebcd459b19dad4d7e05cf7b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |
| unichain | exact address book overlap | TokenP<br>`0xcb3e564293393e0d4f43305a250d4e1716de600b` | project_anchor | unknown | live | verified | n/a | `0x66ccec236bbce5f1bbd1b2fc0a4014e57a55ad02` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [certik.pdf](https://raw.githubusercontent.com/code-423n4/2022-04-mimo/b18670f44d595483df2c0f76d1c57a7bfbfbc083/core/audits/certik.pdf) | CertiK | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [ten-x-titan.pdf](https://certificate.quantstamp.com/full/ten-x-titan.pdf) | Quantstamp | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [Parallel Protocol - Zenith Audit Report.pdf](https://raw.githubusercontent.com/parallel-protocol/parallel-prl/dba8cdcac982a9b59006730cd890870bfc807e15/docs/audits/Parallel%20Protocol%20-%20Zenith%20Audit%20Report.pdf) | Guardian | Audit | 2025-02 | aging | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf](https://raw.githubusercontent.com/parallel-protocol/parallel-prl/dba8cdcac982a9b59006730cd890870bfc807e15/docs/audits/Bailsec%20-%20Parallel%20Protocol%20-%20PRL%20Token%20-%20Final%20Report%20-%20January%202025.pdf) | Guardian | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf](https://raw.githubusercontent.com/parallel-protocol/bridging-module/ad58d439a5e0cae78fa7e53aa0698347bd83b921/docs/audits/Bailsec%20-%20Parallel%20Bridge%20-%20BridgeableToken%20-%20Final%20Report%20-%20December%202024.pdf) | Guardian | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2686] certik.pdf — no match: No reason recorded
- [2688] ten-x-titan.pdf — no match: No reason recorded
- [11981] Parallel Protocol - Zenith Audit Report.pdf — no match: No reason recorded
- [11982] Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf — no match: No reason recorded
- [11983] Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| certik.pdf | AddressProvider | unmatched — not counted | — | — | no |
| certik.pdf | AddressProviderV1 | unmatched — not counted | — | — | no |
| certik.pdf | ConfigProvider | unmatched — not counted | — | — | no |
| certik.pdf | ConfigProviderV1 | unmatched — not counted | — | — | no |
| certik.pdf | DemandMiner | unmatched — not counted | — | — | no |
| certik.pdf | FeeDistributor | unmatched — not counted | — | — | no |
| certik.pdf | FeeDistributorV1 | unmatched — not counted | — | — | no |
| certik.pdf | LiquidiationManager | unmatched — not counted | — | — | no |
| certik.pdf | MIMODistributor | unmatched — not counted | — | — | no |
| certik.pdf | PreUseAirdrop | unmatched — not counted | — | — | no |
| certik.pdf | PriceFeed | unmatched — not counted | — | — | no |
| certik.pdf | RepayVault | unmatched — not counted | — | — | no |
| certik.pdf | Upgrade | unmatched — not counted | — | — | no |
| certik.pdf | VaultsCore | unmatched — not counted | — | — | no |
| certik.pdf | VaultsCoreV1 | unmatched — not counted | — | — | no |
| certik.pdf | VaultsDataProvider | unmatched — not counted | — | — | no |
| certik.pdf | VaultsDataProviderV1 | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | AccessController | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | AddressProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | AggregatorV3Interface | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | ConfigProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | EURX | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | FeeDistributor | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IAccessController | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IAddressProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IConfigProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IFeeDistributor | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | ILiquidationManager | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IPriceFeed | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IRatesManager | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | ISTABLEX | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IVaultsCore | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | IVaultsDataProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | LiquidationManager | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | MathPow | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | PriceFeed | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | PriceFeedEUR | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | RatesManager | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | USDX | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | VaultsCore | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | VaultsDataProvider | unmatched — not counted | — | — | no |
| ten-x-titan.pdf | WadRayMath | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | MainFeeDistributor | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | PeripheralMigrationContract | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | PrincipalMigrationContract | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | RewardMerkleDistributor | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | SideChainFeeCollector | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | TimeLockPenaltyERC20 | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | sPRL1 | unmatched — not counted | — | — | no |
| Parallel Protocol - Zenith Audit Report.pdf | sPRL2 | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | Auctioneer | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | LockBox | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | MainFeeDistributor | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | OFT | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | OFTAdapter | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | OFTCore | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | PRL | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | PeripheralMigrationContract | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | PeripheralPRL | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | PrincipalMigrationContract | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | RewardMerkleDistributor | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | SideChainFeeCollector | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | TimeLockPenaltyERC20 | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | sPRL1 | unmatched — not counted | — | — | no |
| Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf | sPRL2 | unmatched — not counted | — | — | no |
| Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf | BridgeableToken | unmatched — not counted | — | — | no |
| Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf | VaultsCoreState | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x78bb4882b77d74ad9b04ab71fe8e61f72595823c` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x76a9a0062ec6712b99b4f63bd2b4270185759dd5` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7b54f3d993d3bca077946034ea710f9c07420c72` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9afdb5a5ec2bbdddaa4573baa25caa4e4e4a2ca9` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xda818995ddeee3ac36bf492133e1feae1fa377e6` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x9e79ec4bc3574f2865636aecff44b60a723a9ee7` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xc3bef21ea7deb5c34cf33e918c8e28972c8048ed` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x7b54f3d993d3bca077946034ea710f9c07420c72` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x4dde0e308cfb60515218c6ad2df1134fc48531fc` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x9e79ec4bc3574f2865636aecff44b60a723a9ee7` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4dde0e308cfb60515218c6ad2df1134fc48531fc` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x9e79ec4bc3574f2865636aecff44b60a723a9ee7` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | BridgeableTokenP | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe9fe4720fa99f9b28584da44abb8cf91f15990e8` | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xa65821ffe86e6eb613daa1f70af350c5a21759df` | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x15452454a9735d68df430879b2941316a09295b1` | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x657acb8a3bf9383e561565d422ea9b9a90ce0052` | DiamondCut | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2b6c7c275404e93a14a05b549af292231d6e4dec` | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xbefbae2330186f031b469e26283acc66bb5f8826` | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x24cef236056834f38e9247a1fff6681dd313d3aa` | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x23d491aa7c0972087f8a607f6f4c7106a02ba95d` | DiamondLoupe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x1250304f66404cd153fa39388ddcdaec7e0f1707` | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x41d58951cbd12d4ef49b0437897677bbf5547c80` | DiamondProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9e0dcf7a33bbde6689560c5c807dd2a3df991277` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x9e0dcf7a33bbde6689560c5c807dd2a3df991277` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x09f3964874d3c8494f2e98e9e003e53c2750ab72` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x2cb56df31b909854b01d4b1ead5676cf90e885e7` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x10eb3f443baa258b3417d6c318f7865ad61b539b` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x15452454a9735d68df430879b2941316a09295b1` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x9ffacb3db5cb74bdd4c68af3b7cf203130c699ec` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x10eb3f443baa258b3417d6c318f7865ad61b539b` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9e0dcf7a33bbde6689560c5c807dd2a3df991277` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x10eb3f443baa258b3417d6c318f7865ad61b539b` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x9e0dcf7a33bbde6689560c5c807dd2a3df991277` | FlashParallelToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x36da06796fd9d22bcd6287b66a87ffdadb12636c` | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x120805265fa944834dc6e930de2995768806a9d2` | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x57770c1721eb35509f38210a935c8b1911db7e0e` | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xca43ecfcdfba1fed003649e946ae6091646b410a` | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0d45b129dc868963025db79a9074ea9c9e32cae4` | GenericHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x90e4ae8ba8c6fd51fced0f9331668b05c7a4ee43` | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x120805265fa944834dc6e930de2995768806a9d2` | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbe65f0f410a72bec163dc65d46c83699e957d588` | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xf6cc47e981ed5902be382dbe7b54e3696de22dbb` | Getters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x94ea8800444017695345156319e96bdb1e355f7a` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7df74bbb6f82ec1bcb1562a30ef5bf5c326e2811` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x8efb3ded78fbaef2a4efe01e01bbd911e4094b78` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0xfd28f108e95f4d41daae9dbfff707d677985998e` | ParallelAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xe5c82b4f09fd4d079757e156db44afd2c8032cc8` | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xf92ed96c7bec4ad46ff7937cae633c907ebdf594` | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe9fe4720fa99f9b28584da44abb8cf91f15990e8` | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x6efeddf9269c3683ba516cb0e2124fe335f262a2` | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xfb2d070270e9ffc2db107d0162b47c2ed291e3f7` | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xa5d9caa2ef06d39d5992b5046e2defff6d5cbd18` | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2b6c7c275404e93a14a05b549af292231d6e4dec` | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x36da06796fd9d22bcd6287b66a87ffdadb12636c` | RewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xae2fb66d1989ec1684ff095b75d151ae8e403e2e` | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x769f533139eb1723c41cadec243ce10bc4d400fd` | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7` | SavingsNameable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xc3bef21ea7deb5c34cf33e918c8e28972c8048ed` | SettersGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x472ed57b376fe400259fb28e5c46eb53f0e3e7e7` | SettersGovernor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x90e4ae8ba8c6fd51fced0f9331668b05c7a4ee43` | SettersGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x5beada21a6b9cb229117b3ea2c0d1594785013a2` | SettersGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xca43ecfcdfba1fed003649e946ae6091646b410a` | SettersGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0xae2fb66d1989ec1684ff095b75d151ae8e403e2e` | SettersGuardian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe5c82b4f09fd4d079757e156db44afd2c8032cc8` | SettersGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xbbc90e685c4a66ebbdc71a3a1437d3111e43fe84` | SettersGuardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xa65821ffe86e6eb613daa1f70af350c5a21759df` | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x1b2741db9f46a0411852e4cc28ddc476851b5179` | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc3bef21ea7deb5c34cf33e918c8e28972c8048ed` | Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x57265a3d7db8f4a4a155eadf6c7326926cac1490` | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x90337e484b1cb02132fc150d3afa262147348545` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x048c4e07d170eedee8772ca76aee1c4e2d133d5c` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x9ee1963f05553ef838604dd39403be21cef26aa4` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0x9ee1963f05553ef838604dd39403be21cef26aa4` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1250304f66404cd153fa39388ddcdaec7e0f1707` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0x08417cdb7f52a5021bb4eb6e0deaf3f295c3f182` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x35c6323da7d0a4be33ada37eca81e03bece0f1c7` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x24cef236056834f38e9247a1fff6681dd313d3aa` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x048c4e07d170eedee8772ca76aee1c4e2d133d5c` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x0e4e7ca9d7b1e6293d0713efefb4bca010debf46` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3ebe332d2aa8ccb5ddc051c9925d9a41708e54d9` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9ee1963f05553ef838604dd39403be21cef26aa4` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x35c6323da7d0a4be33ada37eca81e03bece0f1c7` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x9ee1963f05553ef838604dd39403be21cef26aa4` | TokenP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 122 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 55 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 67 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2686] certik.pdf
- [2688] ten-x-titan.pdf
- [11981] Parallel Protocol - Zenith Audit Report.pdf
- [11982] Bailsec - Parallel Protocol - PRL Token - Final Report - January 2025.pdf
- [11983] Bailsec - Parallel Bridge - BridgeableToken - Final Report - December 2024.pdf

Fork inheritance lineage and inherited audits are included when available.
