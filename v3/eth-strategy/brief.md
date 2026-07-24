# Agentic Audit Brief: ETH Strategy

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: ETH Strategy (`eth-strategy`)
- Website: [https://www.ethstrat.xyz/](https://www.ethstrat.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 56 unique implementations (165 raw deployments)
- Coverage basis: 0/8 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,877,262.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for ETH Strategy. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across ethereum. Structural roles: 6 core, 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (1), unclassified (1)
- Contract kinds: contract (8)
- Detected standards: ownable (4), ownable2step (4), erc20 (3), erc4626 (2), erc165 (1), erc20permit (1), erc721 (1)
- Frameworks: openzeppelin (5), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2f63ae2184d876f156b9ef21f488d4e6b442fad7`, chain 1)
- UnnamedContract (`0x41675c099f32341bf84bfc5382af534df5c7461a`, chain 1)
- UnnamedContract (`0x823efffa08f946233d2a502a1b073c5e16fea16b`, chain 1)
- UnnamedContract (`0xaa1a5a784be986bae07e8686566bb402c74dfe42`, chain 1)
- UnnamedContract (`0xc53cced6332d06972a7eaedc64fdf6d4af5220b8`, chain 1)
- UnnamedContract (`0xf89f49e21a2bd1fb24332462cb21dc1378aa25e1`, chain 1)
- EthStrategyPerpetualNote (`0xb250c9e0f7be4cff13f94374c993ac445a1385fe`, chain 1)
- GnosisSafeProxy (`0x75efa088e34da03966a5d2b84fa16c77ff25adfa`, chain 1)
- StakedEthStrategyPerpetualNoteLP (`0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c`, chain 1)
- StratOption (`0xe1e9093365545e11cb02c36b2688e17b4dc447fc`, chain 1)
- StratToken (`0x14cf922aa1512adfc34409b63e18d391e4a86a2f`, chain 1)
- UniswapV3Pool (`0x67e26e7ef3344b9e8970f6413dc678b138c30317`, chain 1)
- Vault (`0x9371352ccef6f5b36efdfe90942ffe622ab77f1d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 42 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 14 of 56 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 56
- Raw deployments: 165
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

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArrakisV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239142 | `0xbea0ebfd3957863a820f5e126eed801ccfff0bc6` | ⚠️ Unaudited |
| ArrakisV2Beacon | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fddfb5d2d3fdc5752ffe189a069fcf446da1bc6` | ⚠️ Unaudited |
| ArrakisV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x43916615ae9ae7f43307b90449a6bec3ee45901a`; ethereum `0xe1f086d28c2d8a04a1219403d012e677a2578a16` | ⚠️ Unaudited |
| ArrakisV2Helper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x020e04848110663dfc190072f692946c3367424c` | ⚠️ Unaudited |
| ArrakisV2Resolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd840e7ca51c2106c1169a4e28cd6b4a048a15960` | ⚠️ Unaudited |
| CdtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4598307b5507a2b04d0502fcc9b68bbca9275f3` | ⚠️ Unaudited |
| ClaimStratStream | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38c36e87e5b2ad095a9fe5f51a7ad14e2941afeb` | ⚠️ Unaudited |
| ConnectorPlug | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 49 deployments: ethereum `0x083add2a9afa97efb6412b293145ce965ece3600`; ethereum `0x12fbd04cb103c596b78110c70eedf16821cbfcae`; ethereum `0x134643df54dcaaaf343505361d1eac58a7400b3d`; ethereum `0x15cecd5190a43c7798dd2058308781d0662e678e`; ethereum `0x15f70f64438603e5872a4e81c7a8b5edb5d70d93`; ethereum `0x1967f0f374eed3c0152d9cf0541f814206964041`; ethereum `0x1a9ba93f3cb22ba7228d29607075f444e9ff515c`; ethereum `0x22be0dbe1fe7536613f0ad717d7b8e3faeaa43fd`; ethereum `0x254691c06da387c1050c726cf498efda89083820`; ethereum `0x2b93891dc80ab9696814615f553fd15a3b98d3a2`; ethereum `0x3645c506f4e22ea2380b8c4fd5fa914f36dfc3b0`; ethereum `0x3685306641fb02804e9384c3af09fa9b62199d7e`; ethereum `0x37c24e7081eb7f2b16bde81b556d082c0839f754`; ethereum `0x388341d9e5a7d7d5accd738b2a31b0622e0c1b87`; ethereum `0x3f574bc32a0be9514010409fe8cf19e56fd7c83a`; ethereum `0x3f66f272d33b764960779a301c4183306ae50e10`; ethereum `0x519bc0379ca9c4061a6006b4eac419bc00017b3e`; ethereum `0x5e72430ec945ccc183c34e2860ffc2b5bac712c2`; ethereum `0x5ed056b2aa13e19c5ccd4624f3e93c1b621fad5a`; ethereum `0x67c97bd542b3a7f1f1ecf85cbc4409421ccae971`; ethereum `0x68411d61adf1341a6392c87a93941fdd3ee7df8e`; ethereum `0x716c339f41eacfe2dc4775052411394a2ed04743`; ethereum `0x727ad65db6ae99db5dbee8f202846dd6009bf6d5`; ethereum `0x82d4a4f701a5781ae6236ffa25545329a6161b76`; ethereum `0x876b81f74ad47cf10e5d62aaac80f9e99f5587fc`; ethereum `0x88444394f970b6f21c4f5101003ea513de3e5406`; ethereum `0x8e8d89410000a993d2537d26366e1c3010ab90ff`; ethereum `0x8f4e67c61232167584333e23d7d67bd73d80a4f5`; ethereum `0x94104d7801f30d2f9069118c65fe63a3a11515b1`; ethereum `0x96e1e9c80619d2038afe30450b3cbecb2a7d94cd`; ethereum `0x9d0487d8d93fc08938a39e355c676a8b032dc52a`; ethereum `0xa1d11b141bb47edb2c69b8ced4efe80f62d1c276`; ethereum `0xa2be759b86cea53372c3e9a882047cdc3884d568`; ethereum `0xa72bc51f800127621d4ab541e7bb70b86fe88f0f`; ethereum `0xada55e4762c3663f90d55dc6acc073b012d1e6ea`; ethereum `0xb1178803a726e2077947754de9f2f0cbda29a60f`; ethereum `0xb1dfe248eefa405654b9ff7d470403452180b862`; ethereum `0xb49b8aacd8396c49d9045f6bab101ab32c59643d`; ethereum `0xb4e78daeae4aa911f2427ff4af4b10afe70d9891`; ethereum `0xbef69d0acc388091c7c9702acbfb3b8a873e239e`; ethereum `0xcc958f84daf36d3ec20bcbee7e99c073b882efc3`; ethereum `0xd0711b9ebe84b778483709cde62bacfdbae13623`; ethereum `0xd3a00e95658b05ebac3246e84f6583251ded5d93`; ethereum `0xdabf17a0f13290e85a347119deeb8539b41ef4eb`; ethereum `0xdb39c6502e6daac4d9efe6383029bda464ea043c`; ethereum `0xdba83c0c654db1cd914fa2710ba743e925b53086`; ethereum `0xdccfb24f983586144c085426dbfa3414045e19a3`; ethereum `0xf15d420be7b27f1fa0d9487105658edc3c0ea508`; ethereum `0xfa8c07e28461eb7c65b33de024db97ee4c052c97` | ⚠️ Unaudited |
| Controller | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x4dfa9966457ee49dca3407f8dd484b739c048670`; ethereum `0x6a25c9ab3576e3fc697a8a66d8ca1b3078be1d97`; ethereum `0x954be1803546150bfd887c9ff70fd221f2f505d3`; ethereum `0x96e47fc9c701e8eef22fa53e62dc3ebbdccaea73`; ethereum `0x988dddb1c7578afae302143b1c5fda12fd486904`; ethereum `0xc52ef06b0b44da0df03ad57197b78d784d12d8a6`; ethereum `0xe7cd9370cde6c9b5eabce8f86d01822d3de205a0`; ethereum `0xe9c464957cc4fd2766f2d7e289dae582c6c03207` | ⚠️ Unaudited |
| Derive | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4909ad99441ea5311b90a94650c394cea4a881b8` | ⚠️ Unaudited |
| esETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a2f9b5fe8a3bb067c15ad08644d96b9dfdf9cb` | ⚠️ Unaudited |
| ESPNRedemptionFacilitator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0cb029f9cf1d452db02a4a403f6ff660a0c18b1b`; ethereum `0x8ea1eb0d10e3a4fbe7785dc269dc05d995576299` | ⚠️ Unaudited |
| EthStrategyConvertibleNote | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb96d4d74dcb2f7899c74878d0727ffab009accc4` | ⚠️ Unaudited |
| EthStrategyPerpetualNote | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-239141 | `0xb250c9e0f7be4cff13f94374c993ac445a1385fe` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53f9b8a69f1222218720aa6ae91fe7004ee9c6df` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-239147 | `0x75efa088e34da03966a5d2b84fa16c77ff25adfa` | ⚠️ Unaudited |
| GUniFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f017ee436429711698a5f6761fe935f4866ed2f` | ⚠️ Unaudited |
| GUniPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdffb0453ce8bb0c6059a66171515960483ebaa4c` | ⚠️ Unaudited |
| LyraDepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d7327624bf9627fc11f6da240db8066c4beb3c8` | ⚠️ Unaudited |
| LyraStakingSink | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7fa4ee12bcbe3a7e087839b49a6db96570de4197` | ⚠️ Unaudited |
| LyraTSADepositHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x204cdcfe0d03c75a41a0079f187a7870265bc949`; ethereum `0x6fef1bb8ade9a836663d4c15afd5985fb545004f`; ethereum `0xa79399cd8f80453b5c07349fa7807dc8fc48bfea`; ethereum `0xaf3f1cdd6fcf67d22da8c8d4871bafc518b3ed5d`; ethereum `0xaf65752c4643e25c02f693f9d4fe19cf23a095e3` | ⚠️ Unaudited |
| LyraTSAShareHandlerDepositHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x0fc32b6ce15c18bf201deb79f5dad22d5625a0de`; ethereum `0x56b7597e08e6636d8f41b0ac1a7c475b89a7aa84`; ethereum `0x6383aebee6ee46bc4d577b9803ab5c5402991a0f`; ethereum `0x69812bdf2b6466e8e40a9790105e547d9aed77b7`; ethereum `0xb8ec7088f1e099b02a2ef9e3de42da8fe4b00f31`; ethereum `0xcb39cd7831f091beca153c08453066d7913b598b`; ethereum `0xd9c7e18e08dd839ec975061f498d602112fca13c`; ethereum `0xdfc777078b55211dbf1d3f5776f1fe21aef3f4bf`; ethereum `0xe3500cca2f08049fd3436908bfc03f68018acc6e`; ethereum `0xf962a0ec49e83dd97454200d88ee04ad86393636`; ethereum `0xfcb49f4d618571e4f537deeb4e72bd81a9457db9`; ethereum `0xff8d2eba025e3bc035bf13f4f73befaa7517efc2` | ⚠️ Unaudited |
| LyraTSAShareHandlerWithdrawHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3abd5568768fad72343b9b1fa5603357706c355b`; ethereum `0x48ab5f6ea0a4940620c8a99725934e9ac97136fb`; ethereum `0x9b80ab732a6f1030326af0014f106e12c4db18ec`; ethereum `0xac192a3a71377f9cd51752438cd680418fb803c7` | ⚠️ Unaudited |
| LyraTSAWithdrawHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x5240cf9e4aee511f4a2de7fe10c146f3e97ecf88`; ethereum `0xcae1214f37b6a88fa41e1312563cf3103ca09181`; ethereum `0xd6eada8340cc4666c76cb1d789356e12436f4064`; ethereum `0xeb737867af205fa5dd06e0852f6584067236bfdc` | ⚠️ Unaudited |
| LyraWstETHZapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0465aa3fd3cbf13a9fe52d2be76b6c0889c700d6` | ⚠️ Unaudited |
| MultiDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x133f33873905d15419859b5a7cafa3757841f01c`; ethereum `0x8e52df0ce721e01df82b2c938ef85a6ed7cbf77f` | ⚠️ Unaudited |
| pnETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x771200261c99ff4e0a072b0484b76c56c826229d` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d843e2b0c023150403c73ed385d915dcde086d9` | ⚠️ Unaudited |
| Position | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f9c70ec572282f87417bf75417c7a838739f89d` | ⚠️ Unaudited |
| PresaleTokenRenderer | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x316fe16067fa092c3b22c0b8e40ce3ff1da731c6`; ethereum `0x562e22671d94151fdbec286375b54d5d7a8e60bc` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x16255823f7a3d82e212ea01e96ec123f40b6684b`; ethereum `0x5efc70d056b9ad657ddf238eef578e680a68a641` | ⚠️ Unaudited |
| RedeemPresaylor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5df764d0914c12595a983c4371ddb05502012eab`; ethereum `0xca8940d121a55e9bca2baa508a151f610b06371a` | ⚠️ Unaudited |
| StakedEthStrategyPerpetualNoteLP | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-239144 | `0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c` | ⚠️ Unaudited |
| StakedStrat | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6664390e0485cd609d4d04b430e84e945a51994` | ⚠️ Unaudited |
| StratOption | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239145 | `0xe1e9093365545e11cb02c36b2688e17b4dc447fc` | ⚠️ Unaudited |
| StratPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63aceb46b6bf8877b8983710fdf9a7b1a5a56bf4` | ⚠️ Unaudited |
| StratToken | token | project_anchor | own_supporting | 0 | ethereum | unit-239132 | `0x14cf922aa1512adfc34409b63e18d391e4a86a2f` | ⚠️ Unaudited |
| SuperToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x1d080c689b930f9dea69cb3b4bc6b8c213dfc2ad`; ethereum `0x32390ad170c9604fa97a894c353a4511c0d4b4c2`; ethereum `0x91f3cf61984cc6beb67c24f4a0b75d56ceef16ab`; ethereum `0xcae44c93f7b3b519fc28f9d4f7ae22de770a907b`; ethereum `0xd5e977760ebd45d022500a0561741322da5b04da`; ethereum `0xdfd366d941a51e1f53fbddb19fb4ee3af17ff991`; ethereum `0xe9a12fb15cc00b59867e4e2f0acbdcebfd32b3d7`; ethereum `0xf90b959ae8dfba2dd793ad05176209835658362b` | ⚠️ Unaudited |
| Underlying | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x666651c520bf4721f2f5b0460ed8b8d60bbdde8b` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-239135 | `0x67e26e7ef3344b9e8970f6413dc678b138c30317` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 21 deployments: ethereum `0x26cf1dc84694e04277f2fe4c13e43597c6010c2a`; ethereum `0x30147a4989a0282aab8c9477ae9341da4d09d3b1`; ethereum `0x34bc7fe1965b4e9f4071b69f2e60b8dc88f34475`; ethereum `0x35d4d9bc79b0a543934b1769304b90d752691cad`; ethereum `0x383a4edb30e896b8d2d044be87079d45c0ea7065`; ethereum `0x412ac6044401cdf1e9833b7056c14c74aa593d37`; ethereum `0x4421461239ae746127c13a19177656124433dc60`; ethereum `0x4bb4c3cdc7562f08e9910a0c7d8bb7e108861eb4`; ethereum `0x5324c6d731a3d9d740e880929e2c952ba27408de`; ethereum `0x5bf824c739b7d102d489c7a64ec1dbdf7a667a61`; ethereum `0x613e87be1cd75debc5e6e56a2af2fed84162c142`; ethereum `0x7d7ac8d55a9bd4152b703011f3e61ab3bb0a5592`; ethereum `0x7e1d17b580dd4f89037db331430eaee8b8e50c91`; ethereum `0x8180eccc825b692ef65ff099a0a387743788bf78`; ethereum `0xa357c6a6ddf5cd3f1b246e7611c063b3735524fa`; ethereum `0xb592512153c22f5ba573b0c3e04cab99d4cd8856`; ethereum `0xd7d75fb3e4df1c148241dc38d9e842100a8837a3`; ethereum `0xdf9acfd417584b25cde387972d28dbb7f33c1a72`; ethereum `0xe3e96892d30e0ee1a8131baf87c891201f7137bf`; ethereum `0xebb5d642aa8ccdee98373d6ac3ee0602b63824b3`; ethereum `0xfef430377e7ed9bf5e4cadc41c709bf4bb6235fe` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-239138 | `0x9371352ccef6f5b36efdfe90942ffe622ab77f1d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239133 | `0x2f63ae2184d876f156b9ef21f488d4e6b442fad7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239134 | `0x41675c099f32341bf84bfc5382af534df5c7461a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f51b955a4e5e1912104f62ea2e2469686c6a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701e596e32deca0efb8d7d900511d92ced4c6aa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76dbe9a6e62d9258c134deb7cef4c4283b1192f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8111d91d63cac11c5c54795041e1091e6c09076e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239137 | `0x823efffa08f946233d2a502a1b073c5e16fea16b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239139 | `0xaa1a5a784be986bae07e8686566bb402c74dfe42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239143 | `0xc53cced6332d06972a7eaedc64fdf6d4af5220b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79b47fdbddd19ea1f51113d4eed08a4737b4cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd02edd0481af13a6cb0da1ac462ebdd6689c43cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9e86baff478cd47812983bffb134bd0533de108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedfb03e2acb45dc48c0bab5e110e32f09db3c165` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-239146 | `0xf89f49e21a2bd1fb24332462cb21dc1378aa25e1` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 90
- Live contracts: 1
- Unknown liveness contracts: 89
- Source-verified contracts: 89
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=85, source verified unclassified=4, unverified unclassified=1

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | ArrakisV2<br>`0xbea0ebfd3957863a820f5e126eed801ccfff0bc6` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x333f0d091f8829141f0b44c1eed2d04e77110396` |
| ethereum | candidate review | ArrakisV2Factory<br>`0x43916615ae9ae7f43307b90449a6bec3ee45901a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x333f0d091f8829141f0b44c1eed2d04e77110396` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xe1f086d28c2d8a04a1219403d012e677a2578a16` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x333f0d091f8829141f0b44c1eed2d04e77110396` |
| ethereum | source verified unclassified | PresaleTokenRenderer<br>`0x562e22671d94151fdbec286375b54d5d7a8e60bc` | non_address_book | unknown | unknown | verified | n/a | `0x69697df59d8dc401d7f24ac55b138f99d7da725f` |
| ethereum | candidate review | ConnectorPlug<br>`0x083add2a9afa97efb6412b293145ce965ece3600` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x12fbd04cb103c596b78110c70eedf16821cbfcae` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x134643df54dcaaaf343505361d1eac58a7400b3d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x15cecd5190a43c7798dd2058308781d0662e678e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x15f70f64438603e5872a4e81c7a8b5edb5d70d93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x1967f0f374eed3c0152d9cf0541f814206964041` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x1a9ba93f3cb22ba7228d29607075f444e9ff515c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x254691c06da387c1050c726cf498efda89083820` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x2b93891dc80ab9696814615f553fd15a3b98d3a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x3645c506f4e22ea2380b8c4fd5fa914f36dfc3b0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x3685306641fb02804e9384c3af09fa9b62199d7e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x37c24e7081eb7f2b16bde81b556d082c0839f754` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x388341d9e5a7d7d5accd738b2a31b0622e0c1b87` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x3f574bc32a0be9514010409fe8cf19e56fd7c83a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x3f66f272d33b764960779a301c4183306ae50e10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x519bc0379ca9c4061a6006b4eac419bc00017b3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x5e72430ec945ccc183c34e2860ffc2b5bac712c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x67c97bd542b3a7f1f1ecf85cbc4409421ccae971` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x68411d61adf1341a6392c87a93941fdd3ee7df8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x716c339f41eacfe2dc4775052411394a2ed04743` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x727ad65db6ae99db5dbee8f202846dd6009bf6d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x876b81f74ad47cf10e5d62aaac80f9e99f5587fc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x88444394f970b6f21c4f5101003ea513de3e5406` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x8e8d89410000a993d2537d26366e1c3010ab90ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x8f4e67c61232167584333e23d7d67bd73d80a4f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x94104d7801f30d2f9069118c65fe63a3a11515b1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x96e1e9c80619d2038afe30450b3cbecb2a7d94cd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0x9d0487d8d93fc08938a39e355c676a8b032dc52a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xa1d11b141bb47edb2c69b8ced4efe80f62d1c276` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xa2be759b86cea53372c3e9a882047cdc3884d568` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xa72bc51f800127621d4ab541e7bb70b86fe88f0f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xada55e4762c3663f90d55dc6acc073b012d1e6ea` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xb1178803a726e2077947754de9f2f0cbda29a60f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xb1dfe248eefa405654b9ff7d470403452180b862` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xb49b8aacd8396c49d9045f6bab101ab32c59643d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xb4e78daeae4aa911f2427ff4af4b10afe70d9891` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xbef69d0acc388091c7c9702acbfb3b8a873e239e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xcc958f84daf36d3ec20bcbee7e99c073b882efc3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xd0711b9ebe84b778483709cde62bacfdbae13623` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xd3a00e95658b05ebac3246e84f6583251ded5d93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xdabf17a0f13290e85a347119deeb8539b41ef4eb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xdba83c0c654db1cd914fa2710ba743e925b53086` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xdccfb24f983586144c085426dbfa3414045e19a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xf15d420be7b27f1fa0d9487105658edc3c0ea508` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ConnectorPlug<br>`0xfa8c07e28461eb7c65b33de024db97ee4c052c97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Controller<br>`0x6a25c9ab3576e3fc697a8a66d8ca1b3078be1d97` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Controller<br>`0xe9c464957cc4fd2766f2d7e289dae582c6c03207` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSADepositHook<br>`0x204cdcfe0d03c75a41a0079f187a7870265bc949` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSADepositHook<br>`0x6fef1bb8ade9a836663d4c15afd5985fb545004f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSADepositHook<br>`0xa79399cd8f80453b5c07349fa7807dc8fc48bfea` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSADepositHook<br>`0xaf3f1cdd6fcf67d22da8c8d4871bafc518b3ed5d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSADepositHook<br>`0xaf65752c4643e25c02f693f9d4fe19cf23a095e3` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerDepositHook<br>`0x0fc32b6ce15c18bf201deb79f5dad22d5625a0de` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerDepositHook<br>`0x56b7597e08e6636d8f41b0ac1a7c475b89a7aa84` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerDepositHook<br>`0x6383aebee6ee46bc4d577b9803ab5c5402991a0f` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerDepositHook<br>`0x69812bdf2b6466e8e40a9790105e547d9aed77b7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerDepositHook<br>`0xb8ec7088f1e099b02a2ef9e3de42da8fe4b00f31` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerDepositHook<br>`0xd9c7e18e08dd839ec975061f498d602112fca13c` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerDepositHook<br>`0xe3500cca2f08049fd3436908bfc03f68018acc6e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerDepositHook<br>`0xf962a0ec49e83dd97454200d88ee04ad86393636` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerDepositHook<br>`0xff8d2eba025e3bc035bf13f4f73befaa7517efc2` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerWithdrawHook<br>`0x3abd5568768fad72343b9b1fa5603357706c355b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerWithdrawHook<br>`0x48ab5f6ea0a4940620c8a99725934e9ac97136fb` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerWithdrawHook<br>`0x9b80ab732a6f1030326af0014f106e12c4db18ec` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAShareHandlerWithdrawHook<br>`0xac192a3a71377f9cd51752438cd680418fb803c7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAWithdrawHook<br>`0x5240cf9e4aee511f4a2de7fe10c146f3e97ecf88` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAWithdrawHook<br>`0xcae1214f37b6a88fa41e1312563cf3103ca09181` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAWithdrawHook<br>`0xd6eada8340cc4666c76cb1d789356e12436f4064` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | LyraTSAWithdrawHook<br>`0xeb737867af205fa5dd06e0852f6584067236bfdc` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | ProxyAdmin<br>`0x5efc70d056b9ad657ddf238eef578e680a68a641` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | SuperToken<br>`0x91f3cf61984cc6beb67c24f4a0b75d56ceef16ab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | SuperToken<br>`0xd5e977760ebd45d022500a0561741322da5b04da` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Vault<br>`0x30147a4989a0282aab8c9477ae9341da4d09d3b1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Vault<br>`0x34bc7fe1965b4e9f4071b69f2e60b8dc88f34475` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Vault<br>`0x383a4edb30e896b8d2d044be87079d45c0ea7065` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Vault<br>`0x412ac6044401cdf1e9833b7056c14c74aa593d37` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Vault<br>`0x5324c6d731a3d9d740e880929e2c952ba27408de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Vault<br>`0x5bf824c739b7d102d489c7a64ec1dbdf7a667a61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Vault<br>`0x7d7ac8d55a9bd4152b703011f3e61ab3bb0a5592` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Vault<br>`0xa357c6a6ddf5cd3f1b246e7611c063b3735524fa` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Vault<br>`0xb592512153c22f5ba573b0c3e04cab99d4cd8856` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | candidate review | Vault<br>`0xebb5d642aa8ccdee98373d6ac3ee0602b63824b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | source verified unclassified | Derive<br>`0x4909ad99441ea5311b90a94650c394cea4a881b8` | non_address_book | unknown | unknown | verified | n/a | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | source verified unclassified | LyraStakingSink<br>`0x7fa4ee12bcbe3a7e087839b49a6db96570de4197` | non_address_book | unknown | unknown | verified | n/a | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | source verified unclassified | LyraWstETHZapper<br>`0x0465aa3fd3cbf13a9fe52d2be76b6c0889c700d6` | non_address_book | unknown | unknown | verified | n/a | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8111d91d63cac11c5c54795041e1091e6c09076e` | non_address_book | unknown | unknown | unverified | n/a | `0xa82994cc5e9d94fed2916f762e03245fcbe79f23` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [NM0599-FINAL_ETH_STRAT.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0599-FINAL_ETH_STRAT.pdf) | Nethermind | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2674] NM0599-FINAL_ETH_STRAT.pdf — no match: Two contracts explicitly listed in Audited Files section. Audit final report date is August 19, 2025.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| NM0599-FINAL_ETH_STRAT.pdf | StratPerpetualBond | unmatched — not counted | — | Listed in Audited Files table and described as primary vault in scope. | no |
| NM0599-FINAL_ETH_STRAT.pdf | StratPerpetualBondLPVault | unmatched — not counted | — | Listed in Audited Files table and described as secondary vault in scope. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xbea0ebfd3957863a820f5e126eed801ccfff0bc6` | ArrakisV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb250c9e0f7be4cff13f94374c993ac445a1385fe` | EthStrategyPerpetualNote | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcd65f0b6e31e44225330db8622a9e5307ddc6c1c` | StakedEthStrategyPerpetualNoteLP | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe1e9093365545e11cb02c36b2688e17b4dc447fc` | StratOption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14cf922aa1512adfc34409b63e18d391e4a86a2f` | StratToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9371352ccef6f5b36efdfe90942ffe622ab77f1d` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2674] NM0599-FINAL_ETH_STRAT.pdf

Fork inheritance lineage and inherited audits are included when available.
