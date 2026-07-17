# Agentic Audit Brief: ETH Strategy

## Project Overview

- Project: ETH Strategy (`eth-strategy`)
- Website: [https://www.ethstrat.xyz/](https://www.ethstrat.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.885Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 46 unique implementations (155 raw deployments)
- DeFi Llama TVL: $3,877,262.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 40 project-authored contract(s) across 1 chain(s); 3 ERC4626 vaults, 10 ERC20 tokens, 2 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 18 common project-authored base contract(s) (rescuebase, lyratsasharehandlerhookbase, limithook). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 159; live-surface contracts included: 155 (145 live, 10 unknown).
- Excluded by liveness: 4 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/35 (0.0%)
- Deployed-live implementations: 38 of 46 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 46
- Raw deployments: 155
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArrakisV2 | unknown | ethereum | n/a | [`0xbea0ebfd3957863a820f5e126eed801ccfff0bc6`](./contracts/ethereum-1/0xbea0ebfd3957863a820f5e126eed801ccfff0bc6/) | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | ethereum | n/a | [`0x6fddfb5d2d3fdc5752ffe189a069fcf446da1bc6`](./contracts/ethereum-1/0x6fddfb5d2d3fdc5752ffe189a069fcf446da1bc6/) | ⚠️ Unaudited |
| ArrakisV2Factory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x43916615ae9ae7f43307b90449a6bec3ee45901a`](./contracts/ethereum-1/0x43916615ae9ae7f43307b90449a6bec3ee45901a/); ethereum `0xe1f086d28c2d8a04a1219403d012e677a2578a16` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | ethereum | n/a | [`0x020e04848110663dfc190072f692946c3367424c`](./contracts/ethereum-1/0x020e04848110663dfc190072f692946c3367424c/) | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | ethereum | n/a | [`0xd840e7ca51c2106c1169a4e28cd6b4a048a15960`](./contracts/ethereum-1/0xd840e7ca51c2106c1169a4e28cd6b4a048a15960/) | ⚠️ Unaudited |
| CdtToken | token | ethereum | n/a | [`0xd4598307b5507a2b04d0502fcc9b68bbca9275f3`](./contracts/ethereum-1/0xd4598307b5507a2b04d0502fcc9b68bbca9275f3/) | ⚠️ Unaudited |
| ClaimStratStream | adapter | ethereum | n/a | [`0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb`](./contracts/ethereum-1/0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb/) | ⚠️ Unaudited |
| ConnectorPlug | unknown | ethereum | n/a | 49 deployments: ethereum [`0x083add2a9afa97efb6412b293145ce965ece3600`](./contracts/ethereum-1/0x083add2a9afa97efb6412b293145ce965ece3600/); ethereum `0x12fbd04cb103c596b78110c70eedf16821cbfcae`; ethereum `0x134643df54dcaaaf343505361d1eac58a7400b3d`; ethereum `0x15cecd5190a43c7798dd2058308781d0662e678e`; ethereum `0x15f70f64438603e5872a4e81c7a8b5edb5d70d93`; ethereum `0x1967f0f374eed3c0152d9cf0541f814206964041`; ethereum `0x1a9ba93f3cb22ba7228d29607075f444e9ff515c`; ethereum `0x22be0dbe1fe7536613f0ad717d7b8e3faeaa43fd`; ethereum `0x254691c06da387c1050c726cf498efda89083820`; ethereum `0x2b93891dc80ab9696814615f553fd15a3b98d3a2`; ethereum `0x3645c506f4e22ea2380b8c4fd5fa914f36dfc3b0`; ethereum `0x3685306641fb02804e9384c3af09fa9b62199d7e`; ethereum `0x37c24e7081eb7f2b16bde81b556d082c0839f754`; ethereum `0x388341d9e5a7d7d5accd738b2a31b0622e0c1b87`; ethereum `0x3f574bc32a0be9514010409fe8cf19e56fd7c83a`; ethereum `0x3f66f272d33b764960779a301c4183306ae50e10`; ethereum `0x519bc0379ca9c4061a6006b4eac419bc00017b3e`; ethereum `0x5e72430ec945ccc183c34e2860ffc2b5bac712c2`; ethereum `0x5ed056b2aa13e19c5ccd4624f3e93c1b621fad5a`; ethereum `0x67c97bd542b3a7f1f1ecf85cbc4409421ccae971`; ethereum `0x68411d61adf1341a6392c87a93941fdd3ee7df8e`; ethereum `0x716c339f41eacfe2dc4775052411394a2ed04743`; ethereum `0x727ad65db6ae99db5dbee8f202846dd6009bf6d5`; ethereum `0x82d4a4f701a5781ae6236ffa25545329a6161b76`; ethereum `0x876b81f74ad47cf10e5d62aaac80f9e99f5587fc`; ethereum `0x88444394f970b6f21c4f5101003ea513de3e5406`; ethereum `0x8e8d89410000a993d2537d26366e1c3010ab90ff`; ethereum `0x8f4e67c61232167584333e23d7d67bd73d80a4f5`; ethereum `0x94104d7801f30d2f9069118c65fe63a3a11515b1`; ethereum `0x96e1e9c80619d2038afe30450b3cbecb2a7d94cd`; ethereum `0x9d0487d8d93fc08938a39e355c676a8b032dc52a`; ethereum `0xa1d11b141bb47edb2c69b8ced4efe80f62d1c276`; ethereum `0xa2be759b86cea53372c3e9a882047cdc3884d568`; ethereum `0xa72bc51f800127621d4ab541e7bb70b86fe88f0f`; ethereum `0xada55e4762c3663f90d55dc6acc073b012d1e6ea`; ethereum `0xb1178803a726e2077947754de9f2f0cbda29a60f`; ethereum `0xb1dfe248eefa405654b9ff7d470403452180b862`; ethereum `0xb49b8aacd8396c49d9045f6bab101ab32c59643d`; ethereum `0xb4e78daeae4aa911f2427ff4af4b10afe70d9891`; ethereum `0xbef69d0acc388091c7c9702acbfb3b8a873e239e`; ethereum `0xcc958f84daf36d3ec20bcbee7e99c073b882efc3`; ethereum `0xd0711b9ebe84b778483709cde62bacfdbae13623`; ethereum `0xd3a00e95658b05ebac3246e84f6583251ded5d93`; ethereum `0xdabf17a0f13290e85a347119deeb8539b41ef4eb`; ethereum `0xdb39c6502e6daac4d9efe6383029bda464ea043c`; ethereum `0xdba83c0c654db1cd914fa2710ba743e925b53086`; ethereum `0xdccfb24f983586144c085426dbfa3414045e19a3`; ethereum `0xf15d420be7b27f1fa0d9487105658edc3c0ea508`; ethereum `0xfa8c07e28461eb7c65b33de024db97ee4c052c97` | ⚠️ Unaudited |
| Controller | governance | ethereum | n/a | 8 deployments: ethereum [`0x4dfa9966457ee49dca3407f8dd484b739c048670`](./contracts/ethereum-1/0x4dfa9966457ee49dca3407f8dd484b739c048670/); ethereum `0x6a25c9ab3576e3fc697a8a66d8ca1b3078be1d97`; ethereum `0x954be1803546150bfd887c9ff70fd221f2f505d3`; ethereum `0x96e47fc9c701e8eef22fa53e62dc3ebbdccaea73`; ethereum `0x988dddb1c7578afae302143b1c5fda12fd486904`; ethereum `0xc52ef06b0b44da0df03ad57197b78d784d12d8a6`; ethereum `0xe7cd9370cde6c9b5eabce8f86d01822d3de205a0`; ethereum `0xe9c464957cc4fd2766f2d7e289dae582c6c03207` | ⚠️ Unaudited |
| esETH | unknown | ethereum | n/a | [`0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb`](./contracts/ethereum-1/0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb/) | ⚠️ Unaudited |
| ESPNRedemptionFacilitator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b`](./contracts/ethereum-1/0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b/); ethereum `0x8ea1eb0d10e3a4fbe7785dc269dc05d995576299` | ⚠️ Unaudited |
| EthStrategyConvertibleNote | core_logic | ethereum | n/a | [`0xb96d4d74dcb2f7899c74878d0727ffab009accc4`](./contracts/ethereum-1/0xb96d4d74dcb2f7899c74878d0727ffab009accc4/) | ⚠️ Unaudited |
| EthStrategyPerpetualNote | core_logic | ethereum | n/a | [`0xb250c9e0f7be4cff13f94374c993ac445a1385fe`](./contracts/ethereum-1/0xb250c9e0f7be4cff13f94374c993ac445a1385fe/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | n/a | [`0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df`](./contracts/ethereum-1/0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0x75efa088e34da03966a5d2b84fa16c77ff25adfa`](./contracts/ethereum-1/0x75efa088e34da03966a5d2b84fa16c77ff25adfa/) | ⚠️ Unaudited |
| GUniFactory | registry | ethereum | n/a | [`0x2f017ee436429711698a5f6761fe935f4866ed2f`](./contracts/ethereum-1/0x2f017ee436429711698a5f6761fe935f4866ed2f/) | ⚠️ Unaudited |
| GUniPool | core_logic | ethereum | n/a | [`0xdffb0453ce8bb0c6059a66171515960483ebaa4c`](./contracts/ethereum-1/0xdffb0453ce8bb0c6059a66171515960483ebaa4c/) | ⚠️ Unaudited |
| LyraDepositWrapper | unknown | ethereum | n/a | [`0x7d7327624bf9627fc11f6da240db8066c4beb3c8`](./contracts/ethereum-1/0x7d7327624bf9627fc11f6da240db8066c4beb3c8/) | ⚠️ Unaudited |
| LyraTSADepositHook | unknown | ethereum | n/a | 5 deployments: ethereum [`0x204cdcfe0d03c75a41a0079f187a7870265bc949`](./contracts/ethereum-1/0x204cdcfe0d03c75a41a0079f187a7870265bc949/); ethereum `0x6fef1bb8ade9a836663d4c15afd5985fb545004f`; ethereum `0xa79399cd8f80453b5c07349fa7807dc8fc48bfea`; ethereum `0xaf3f1cdd6fcf67d22da8c8d4871bafc518b3ed5d`; ethereum `0xaf65752c4643e25c02f693f9d4fe19cf23a095e3` | ⚠️ Unaudited |
| LyraTSAShareHandlerDepositHook | unknown | ethereum | n/a | 12 deployments: ethereum [`0x0fc32b6ce15c18bf201deb79f5dad22d5625a0de`](./contracts/ethereum-1/0x0fc32b6ce15c18bf201deb79f5dad22d5625a0de/); ethereum `0x56b7597e08e6636d8f41b0ac1a7c475b89a7aa84`; ethereum `0x6383aebee6ee46bc4d577b9803ab5c5402991a0f`; ethereum `0x69812bdf2b6466e8e40a9790105e547d9aed77b7`; ethereum `0xb8ec7088f1e099b02a2ef9e3de42da8fe4b00f31`; ethereum `0xcb39cd7831f091beca153c08453066d7913b598b`; ethereum `0xd9c7e18e08dd839ec975061f498d602112fca13c`; ethereum `0xdfc777078b55211dbf1d3f5776f1fe21aef3f4bf`; ethereum `0xe3500cca2f08049fd3436908bfc03f68018acc6e`; ethereum `0xf962a0ec49e83dd97454200d88ee04ad86393636`; ethereum `0xfcb49f4d618571e4f537deeb4e72bd81a9457db9`; ethereum `0xff8d2eba025e3bc035bf13f4f73befaa7517efc2` | ⚠️ Unaudited |
| LyraTSAShareHandlerWithdrawHook | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3abd5568768fad72343b9b1fa5603357706c355b`](./contracts/ethereum-1/0x3abd5568768fad72343b9b1fa5603357706c355b/); ethereum `0x48ab5f6ea0a4940620c8a99725934e9ac97136fb`; ethereum `0x9b80ab732a6f1030326af0014f106e12c4db18ec`; ethereum `0xac192a3a71377f9cd51752438cd680418fb803c7` | ⚠️ Unaudited |
| LyraTSAWithdrawHook | unknown | ethereum | n/a | 4 deployments: ethereum [`0x5240cf9e4aee511f4a2de7fe10c146f3e97ecf88`](./contracts/ethereum-1/0x5240cf9e4aee511f4a2de7fe10c146f3e97ecf88/); ethereum `0xcae1214f37b6a88fa41e1312563cf3103ca09181`; ethereum `0xd6eada8340cc4666c76cb1d789356e12436f4064`; ethereum `0xeb737867af205fa5dd06e0852f6584067236bfdc` | ⚠️ Unaudited |
| MultiDistro | unknown | ethereum | n/a | 2 deployments: ethereum [`0x133f33873905d15419859b5a7cafa3757841f01c`](./contracts/ethereum-1/0x133f33873905d15419859b5a7cafa3757841f01c/); ethereum `0x8e52df0ce721e01df82b2c938ef85a6ed7cbf77f` | ⚠️ Unaudited |
| pnETH | unknown | ethereum | n/a | [`0x771200261c99ff4e0a072b0484b76c56c826229d`](./contracts/ethereum-1/0x771200261c99ff4e0a072b0484b76c56c826229d/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | n/a | [`0x6d843e2b0c023150403c73ed385d915dcde086d9`](./contracts/ethereum-1/0x6d843e2b0c023150403c73ed385d915dcde086d9/) | ⚠️ Unaudited |
| Position | unknown | ethereum | n/a | [`0x7f9c70ec572282f87417bf75417c7a838739f89d`](./contracts/ethereum-1/0x7f9c70ec572282f87417bf75417c7a838739f89d/) | ⚠️ Unaudited |
| PresaleTokenRenderer | token | ethereum | n/a | [`0x316fe16067fa092c3b22c0b8e40ce3ff1da731c6`](./contracts/ethereum-1/0x316fe16067fa092c3b22c0b8e40ce3ff1da731c6/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x16255823f7a3d82e212ea01e96ec123f40b6684b`](./contracts/ethereum-1/0x16255823f7a3d82e212ea01e96ec123f40b6684b/); ethereum `0x5efc70d056b9ad657ddf238eef578e680a68a641` | ⚠️ Unaudited |
| RedeemPresaylor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5df764d0914c12595a983c4371ddb05502012eab`](./contracts/ethereum-1/0x5df764d0914c12595a983c4371ddb05502012eab/); ethereum `0xca8940d121a55e9bca2baa508a151f610b06371a` | ⚠️ Unaudited |
| StakedEthStrategyPerpetualNoteLP | core_logic | ethereum | n/a | [`0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c`](./contracts/ethereum-1/0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c/) | ⚠️ Unaudited |
| StakedStrat | token | ethereum | n/a | [`0xd6664390e0485cd609d4d04b430e84e945a51994`](./contracts/ethereum-1/0xd6664390e0485cd609d4d04b430e84e945a51994/) | ⚠️ Unaudited |
| StratOption | unknown | ethereum | n/a | [`0xe1e9093365545e11cb02c36b2688e17b4dc447fc`](./contracts/ethereum-1/0xe1e9093365545e11cb02c36b2688e17b4dc447fc/) | ⚠️ Unaudited |
| StratPresale | unknown | ethereum | n/a | [`0x63aceb46b6bf8877b8983710fdf9a7b1a5a56bf4`](./contracts/ethereum-1/0x63aceb46b6bf8877b8983710fdf9a7b1a5a56bf4/) | ⚠️ Unaudited |
| StratToken | token | ethereum | n/a | [`0x14cf922aa1512adfc34409b63e18d391e4a86a2f`](./contracts/ethereum-1/0x14cf922aa1512adfc34409b63e18d391e4a86a2f/) | ⚠️ Unaudited |
| SuperToken | token | ethereum | n/a | 8 deployments: ethereum [`0x1d080c689b930f9dea69cb3b4bc6b8c213dfc2ad`](./contracts/ethereum-1/0x1d080c689b930f9dea69cb3b4bc6b8c213dfc2ad/); ethereum `0x32390ad170c9604fa97a894c353a4511c0d4b4c2`; ethereum `0x91f3cf61984cc6beb67c24f4a0b75d56ceef16ab`; ethereum `0xcae44c93f7b3b519fc28f9d4f7ae22de770a907b`; ethereum `0xd5e977760ebd45d022500a0561741322da5b04da`; ethereum `0xdfd366d941a51e1f53fbddb19fb4ee3af17ff991`; ethereum `0xe9a12fb15cc00b59867e4e2f0acbdcebfd32b3d7`; ethereum `0xf90b959ae8dfba2dd793ad05176209835658362b` | ⚠️ Unaudited |
| Underlying | unknown | ethereum | n/a | [`0x666651c520bf4721f2f5b0460ed8b8d60bbdde8b`](./contracts/ethereum-1/0x666651c520bf4721f2f5b0460ed8b8d60bbdde8b/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | ethereum | n/a | [`0x67e26e7ef3344b9e8970f6413dc678b138c30317`](./contracts/ethereum-1/0x67e26e7ef3344b9e8970f6413dc678b138c30317/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 22 deployments: ethereum [`0x26cf1dc84694e04277f2fe4c13e43597c6010c2a`](./contracts/ethereum-1/0x26cf1dc84694e04277f2fe4c13e43597c6010c2a/); ethereum `0x30147a4989a0282aab8c9477ae9341da4d09d3b1`; ethereum `0x34bc7fe1965b4e9f4071b69f2e60b8dc88f34475`; ethereum `0x35d4d9bc79b0a543934b1769304b90d752691cad`; ethereum `0x383a4edb30e896b8d2d044be87079d45c0ea7065`; ethereum `0x412ac6044401cdf1e9833b7056c14c74aa593d37`; ethereum `0x4421461239ae746127c13a19177656124433dc60`; ethereum `0x4bb4c3cdc7562f08e9910a0c7d8bb7e108861eb4`; ethereum `0x5324c6d731a3d9d740e880929e2c952ba27408de`; ethereum `0x5bf824c739b7d102d489c7a64ec1dbdf7a667a61`; ethereum `0x613e87be1cd75debc5e6e56a2af2fed84162c142`; ethereum `0x7d7ac8d55a9bd4152b703011f3e61ab3bb0a5592`; ethereum `0x7e1d17b580dd4f89037db331430eaee8b8e50c91`; ethereum `0x8180eccc825b692ef65ff099a0a387743788bf78`; ethereum `0x9371352ccef6f5b36efdfe90942ffe622ab77f1d`; ethereum `0xa357c6a6ddf5cd3f1b246e7611c063b3735524fa`; ethereum `0xb592512153c22f5ba573b0c3e04cab99d4cd8856`; ethereum `0xd7d75fb3e4df1c148241dc38d9e842100a8837a3`; ethereum `0xdf9acfd417584b25cde387972d28dbb7f33c1a72`; ethereum `0xe3e96892d30e0ee1a8131baf87c891201f7137bf`; ethereum `0xebb5d642aa8ccdee98373d6ac3ee0602b63824b3`; ethereum `0xfef430377e7ed9bf5e4cadc41c709bf4bb6235fe` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x50f51b955a4e5e1912104f62ea2e2469686c6a4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x701e596e32deca0efb8d7d900511d92ced4c6aa5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x76dbe9a6e62d9258c134deb7cef4c4283b1192f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8111d91d63cac11c5c54795041e1091e6c09076e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc79b47fdbddd19ea1f51113d4eed08a4737b4cbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd02edd0481af13a6cb0da1ac462ebdd6689c43cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e86baff478cd47812983bffb134bd0533de108` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedfb03e2acb45dc48c0bab5e110e32f09db3c165` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [NM0599-FINAL_ETH_STRAT.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0599-FINAL_ETH_STRAT.pdf) | Nethermind | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbea0ebfd3957863a820f5e126eed801ccfff0bc6`](./contracts/ethereum-1/0xbea0ebfd3957863a820f5e126eed801ccfff0bc6/) | ArrakisV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fddfb5d2d3fdc5752ffe189a069fcf446da1bc6`](./contracts/ethereum-1/0x6fddfb5d2d3fdc5752ffe189a069fcf446da1bc6/) | ArrakisV2Beacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43916615ae9ae7f43307b90449a6bec3ee45901a`](./contracts/ethereum-1/0x43916615ae9ae7f43307b90449a6bec3ee45901a/) | ArrakisV2Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x020e04848110663dfc190072f692946c3367424c`](./contracts/ethereum-1/0x020e04848110663dfc190072f692946c3367424c/) | ArrakisV2Helper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd840e7ca51c2106c1169a4e28cd6b4a048a15960`](./contracts/ethereum-1/0xd840e7ca51c2106c1169a4e28cd6b4a048a15960/) | ArrakisV2Resolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd4598307b5507a2b04d0502fcc9b68bbca9275f3`](./contracts/ethereum-1/0xd4598307b5507a2b04d0502fcc9b68bbca9275f3/) | CdtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb`](./contracts/ethereum-1/0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb/) | ClaimStratStream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x083add2a9afa97efb6412b293145ce965ece3600`](./contracts/ethereum-1/0x083add2a9afa97efb6412b293145ce965ece3600/) | ConnectorPlug | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfa9966457ee49dca3407f8dd484b739c048670`](./contracts/ethereum-1/0x4dfa9966457ee49dca3407f8dd484b739c048670/) | Controller | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb`](./contracts/ethereum-1/0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb/) | esETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b`](./contracts/ethereum-1/0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b/) | ESPNRedemptionFacilitator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb96d4d74dcb2f7899c74878d0727ffab009accc4`](./contracts/ethereum-1/0xb96d4d74dcb2f7899c74878d0727ffab009accc4/) | EthStrategyConvertibleNote | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb250c9e0f7be4cff13f94374c993ac445a1385fe`](./contracts/ethereum-1/0xb250c9e0f7be4cff13f94374c993ac445a1385fe/) | EthStrategyPerpetualNote | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df`](./contracts/ethereum-1/0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f017ee436429711698a5f6761fe935f4866ed2f`](./contracts/ethereum-1/0x2f017ee436429711698a5f6761fe935f4866ed2f/) | GUniFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdffb0453ce8bb0c6059a66171515960483ebaa4c`](./contracts/ethereum-1/0xdffb0453ce8bb0c6059a66171515960483ebaa4c/) | GUniPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d7327624bf9627fc11f6da240db8066c4beb3c8`](./contracts/ethereum-1/0x7d7327624bf9627fc11f6da240db8066c4beb3c8/) | LyraDepositWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x204cdcfe0d03c75a41a0079f187a7870265bc949`](./contracts/ethereum-1/0x204cdcfe0d03c75a41a0079f187a7870265bc949/) | LyraTSADepositHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc32b6ce15c18bf201deb79f5dad22d5625a0de`](./contracts/ethereum-1/0x0fc32b6ce15c18bf201deb79f5dad22d5625a0de/) | LyraTSAShareHandlerDepositHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3abd5568768fad72343b9b1fa5603357706c355b`](./contracts/ethereum-1/0x3abd5568768fad72343b9b1fa5603357706c355b/) | LyraTSAShareHandlerWithdrawHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5240cf9e4aee511f4a2de7fe10c146f3e97ecf88`](./contracts/ethereum-1/0x5240cf9e4aee511f4a2de7fe10c146f3e97ecf88/) | LyraTSAWithdrawHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x133f33873905d15419859b5a7cafa3757841f01c`](./contracts/ethereum-1/0x133f33873905d15419859b5a7cafa3757841f01c/) | MultiDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x771200261c99ff4e0a072b0484b76c56c826229d`](./contracts/ethereum-1/0x771200261c99ff4e0a072b0484b76c56c826229d/) | pnETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d843e2b0c023150403c73ed385d915dcde086d9`](./contracts/ethereum-1/0x6d843e2b0c023150403c73ed385d915dcde086d9/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f9c70ec572282f87417bf75417c7a838739f89d`](./contracts/ethereum-1/0x7f9c70ec572282f87417bf75417c7a838739f89d/) | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316fe16067fa092c3b22c0b8e40ce3ff1da731c6`](./contracts/ethereum-1/0x316fe16067fa092c3b22c0b8e40ce3ff1da731c6/) | PresaleTokenRenderer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5df764d0914c12595a983c4371ddb05502012eab`](./contracts/ethereum-1/0x5df764d0914c12595a983c4371ddb05502012eab/) | RedeemPresaylor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c`](./contracts/ethereum-1/0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c/) | StakedEthStrategyPerpetualNoteLP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd6664390e0485cd609d4d04b430e84e945a51994`](./contracts/ethereum-1/0xd6664390e0485cd609d4d04b430e84e945a51994/) | StakedStrat | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1e9093365545e11cb02c36b2688e17b4dc447fc`](./contracts/ethereum-1/0xe1e9093365545e11cb02c36b2688e17b4dc447fc/) | StratOption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63aceb46b6bf8877b8983710fdf9a7b1a5a56bf4`](./contracts/ethereum-1/0x63aceb46b6bf8877b8983710fdf9a7b1a5a56bf4/) | StratPresale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14cf922aa1512adfc34409b63e18d391e4a86a2f`](./contracts/ethereum-1/0x14cf922aa1512adfc34409b63e18d391e4a86a2f/) | StratToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d080c689b930f9dea69cb3b4bc6b8c213dfc2ad`](./contracts/ethereum-1/0x1d080c689b930f9dea69cb3b4bc6b8c213dfc2ad/) | SuperToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x666651c520bf4721f2f5b0460ed8b8d60bbdde8b`](./contracts/ethereum-1/0x666651c520bf4721f2f5b0460ed8b8d60bbdde8b/) | Underlying | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26cf1dc84694e04277f2fe4c13e43597c6010c2a`](./contracts/ethereum-1/0x26cf1dc84694e04277f2fe4c13e43597c6010c2a/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2674] NM0599-FINAL_ETH_STRAT.pdf

Fork inheritance lineage and inherited audits are included when available.
