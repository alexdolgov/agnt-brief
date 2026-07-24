# Agentic Audit Brief: Rumpel Labs

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Rumpel Labs (`rumpel-labs`)
- Website: [https://www.rumpel.xyz](https://www.rumpel.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 134 unique implementations (315 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,428,121.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Rumpel Labs in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 134 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 71
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/124
- Verified + Unaudited implementations: 124
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 134
- Raw deployments: 315
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (124)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3TreasuryConnector | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x91eda28735ce089a8b5133476263c3fb8303c8ca` | ⚠️ Unaudited |
| AddressesWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x2d00499079d7145163a213ab1443056cce6b0f77`; ethereum `0x5943026e21e3936538620ba27e01525bba311255`; ethereum `0xfff16789c95d987c214bcba466e26dfc5dc01ad6` | ⚠️ Unaudited |
| AnchorageTokenUSDtb | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc139190f447e929f090edeb554d95abb8b18ac1c` | ⚠️ Unaudited |
| BoringVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x849da65afed8483152f8baa75f776c6f2c02e540`; ethereum `0xf6bbbc05536ab198d4b7ab74a93f8e2d4cad5354` | ⚠️ Unaudited |
| DefaultCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 14 deployments: ethereum `0x03bf48b8a1b37fbead1ecabcf15b98b924ffa5ac`; ethereum `0x0c969cec0729487d264716e55f232b404299032c`; ethereum `0x19d0d8e6294b7a04a2733fe433444704b791939a`; ethereum `0x21dbba985eea6ba7f27534a72ccb292eba1d2c7c`; ethereum `0x422f5accc812c396600010f224b320a743695f85`; ethereum `0x475d3eb031d250070b63fa145f0fcfc5d97c304a`; ethereum `0x5198cb44d7b2e993ebdda9cad3b9a0eaa32769d2`; ethereum `0x52cb8a621610cc3ccf498a1981a8ae7ad6b8ab2a`; ethereum `0x594380c06552a4136e2601f89e50b3b9ad17bd4d`; ethereum `0x940750a267c64f3bbce31b948b67cd168f0843fa`; ethereum `0x971e5b5d4baa5607863f3748febf287c7bf82618`; ethereum `0x9c0823d3a1172f9ddf672d438dec79c39a64f448`; ethereum `0xb09a50acfff7d12b7d18adef3d1027bc149bad1c`; ethereum `0xe39b5f5638a209c1a6b6cdffe5d37f7ac99fcc84` | ⚠️ Unaudited |
| DepositDataRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ab6ddce07556639333d3df1eaa684f5735223e` | ⚠️ Unaudited |
| DineroTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75ec066efb238cf211baa73b28db539541493c70`; ethereum `0x9971f773f96f1223c2befa4aa4562ea5ce0af812` | ⚠️ Unaudited |
| DVV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5e362eb2c0706bd1d134689ec75176018385430b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x574952ec88b2fc271d0c0db130794c86ea42139a`; ethereum `0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0b4f6bfb694790051e0203db83edbb5888099556`; ethereum `0x5f31ed13ebf81b67a9f9498f3d1d2da553058988` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84d44a696539b3ef4162184fb8ab97596a311e9e`; ethereum `0xc25529b4ee01cc6262146433b6509e9e6e30f14a` | ⚠️ Unaudited |
| EthBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00e3af59e2496d030e5b2c629784db284fd4cd3c`; ethereum `0x2d29f3f4228fcaa9238201362ace42821ed4bcad`; ethereum `0xd19e4b1d680a6aa672b08ebf483381bc0c9c8478` | ⚠️ Unaudited |
| EthenaLPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8707f238936c12c309bfc2b9959c35828acfc512` | ⚠️ Unaudited |
| EthErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3acdbdbf0459d376df9378c02af50c83dc7646e9`; ethereum `0x7e5198df09fed891e7aecd623cd2231443ceb5d5`; ethereum `0xca866585ecfdfcc98348ef2717b811626ed98207` | ⚠️ Unaudited |
| EthErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6ddc10eeeebbbcf00e784ba44fe4b038af26cb53`; ethereum `0x8ee00c149299dd1b051a7ca9cc2a7a1d706773de` | ⚠️ Unaudited |
| EthGenesisVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x124c33d07f94b31adf87c12f7ca3a586d3510928`; ethereum `0x2d491bb32610a0ef1de017e49f949b3799135f31`; ethereum `0x7aa02b4cf39f98ffeb324325775f840d18549733`; ethereum `0x9481a47c5650a868839c6511f0eef8bf962fabd7` | ⚠️ Unaudited |
| EthGenesisVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xac0f906e433d58fa868f936e8a43230473652885` | ⚠️ Unaudited |
| EthOsTokenVaultEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09e84205df7c68907e619d07afd90143c5763605` | ⚠️ Unaudited |
| EthPrivErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x28f325dd287a5984b754d34cfca38af3a8429e71`; ethereum `0x453056f0bc4631abb15eec656139f88067668e3e`; ethereum `0x9488a7dd178f0d927707eec61a7d8c0ae9558c88`; ethereum `0xf5f20572186d2fab233dadd753c053ab581ba69a` | ⚠️ Unaudited |
| EthPrivVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x135f45e0179dd928e73422b40bdc6c5d7047a035`; ethereum `0x81ab00dd782492d62105b8fa9b03e82d4b57798c`; ethereum `0xb1bfaf188a6ce50f21486fcbd77c1a8e908197fb`; ethereum `0xb53a6c402b0d4fb6c7aa59b7d8fbd2e884fbf3bc` | ⚠️ Unaudited |
| EthRestakeBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e` | ⚠️ Unaudited |
| EthRestakeBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e30370cabd4b4d95be17706d840ff9de1addb67` | ⚠️ Unaudited |
| EthRestakeErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4` | ⚠️ Unaudited |
| EthRestakePrivErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedebe792c6190be612cbe97f628137faa8c36ee5` | ⚠️ Unaudited |
| EthRestakePrivVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x792ff341e1db4ab20fbfb93c0fc071501525e353` | ⚠️ Unaudited |
| EthRestakeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59adb46407ebf4cba923f91f2c06acc4b2e073bb` | ⚠️ Unaudited |
| EthRestakeVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x026df36ec050e7f473cbfc30aa42946d3ed11b2c`; ethereum `0x32634dec69d4523d2f980be92494dc03bd4c9fce`; ethereum `0x44ecc30bcc64b832a2cb5d1ff44260b1fcc565e1`; ethereum `0x6a2835087c6809902a2f39b86fe64ef5dacc31e1`; ethereum `0x807305c086a99cbdbff07cb4256ce556d9d6f0af`; ethereum `0xf63666399aa1af203bfc9171147edcb21a6bf3a2` | ⚠️ Unaudited |
| EthValidatorsChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac9125646185cb58e86e77d5f402efa3fafafc84` | ⚠️ Unaudited |
| EthVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78`; ethereum `0x35dc754f157b32ba0941ffcd89d16d3d0b2ca6cf`; ethereum `0xba0b5ba961b108bff8d761a256e9763a4fccff23`; ethereum `0xdecb606ee9140f229df78f9e40041ead61610f8f` | ⚠️ Unaudited |
| EthVaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 18 deployments: ethereum `0x170618936cd96b1ed8112ec3d3778374b38dfe5e`; ethereum `0x1be3ad178d85ce1b6a7fcf5baefe68f26541b07c`; ethereum `0x2a0335fb13cbf86a76a7f9d9d038389788667960`; ethereum `0x42fe3bf8c18b87007e8c100daccb7fe4ea07f699`; ethereum `0x4e3d8197c2cb9bcd29e3dceae3670d3d5e774017`; ethereum `0x5518052f2d898f062ee59964004a560f24e2ee7d`; ethereum `0x58fdd303ab66722130c01533e7a1177f2b3a2949`; ethereum `0x7a4f9912a812d932da57d73cb5e5784b2c1cba4a`; ethereum `0x8750594b33516232e751c8b9c350a660cd5f1bb8`; ethereum `0x96fff3a26b29bf7700dbb475730b373afee175ee`; ethereum `0xb7832c9e93e54661354c8b88f3ce7c0915f4c896`; ethereum `0xd2468daaeb6f2d4b354dbd74593f4ac8c58f2cba`; ethereum `0xdada5a8e3703b1e3ea2bae5ab704627eb2659fcc`; ethereum `0xe84183effbcc76d022cccc31b95eaa332bb5bb11`; ethereum `0xe9f3e6115fed87f36bf10c8c111fb7b20b27ba0f`; ethereum `0xf3c94c38b4def16a20715b90918052c34adaf3b8`; ethereum `0xfaa05900019f6e465086bce16bb3f06992715d53`; ethereum `0xff0650ba2387843f567e6962f1b7c96dc99362ca` | ⚠️ Unaudited |
| EVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9f12d29c7cc72bb3d237e2d042a6d890421f9899` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36c9b5e8f039381d1da79b94a206af8bc076c043`; ethereum `0xf47af3904dab5bb2ec2980a6100ec58a2f82ba80` | ⚠️ Unaudited |
| ExternalRequestsManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10f4d4ead6bcd4de7849898403d88528e3dfc872`; ethereum `0x1de327c23ed8f52f797d55b31abce98cb46c8ea9` | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x052b1cacbdea7b4d711c6f428a20618ef60fda1b`; ethereum `0x3ed5dc199d8bce1e1a9ed8520a215ae9af9bd45d`; ethereum `0x8ade71febab1337ce08062fe5208a611ee6e86e9`; ethereum `0xda6cef7f667d992a60eb823ab215493aa0c6b360` | ⚠️ Unaudited |
| FluidDexReservesResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc93876c0eed99645dd53937b25433e311881a27c` | ⚠️ Unaudited |
| FluidDexResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71783f64719899319b56bda4f27e1219d9af9a3d` | ⚠️ Unaudited |
| FluidDexT1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1dd125c32e4b5086c63cc13b3ca02c4a2a61fa9b`; ethereum `0xde632c3a214d5f14c1d8ddf0b92f8bcd188fee45`; ethereum `0xf063bd202e45d6b2843102cb4ece339026645d4a` | ⚠️ Unaudited |
| FluidVaultPositionsResolver | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e3dae4f30347782089d398d462546eb5276801c` | ⚠️ Unaudited |
| FluidVaultT1 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1c6068ec051f0ac1688ca1fe76810fa9c8644278`; ethereum `0x2f3780e21caba1bedfb24e37c97917def304dffa`; ethereum `0x3996464c0fcca8183e13ea5e5e74375e2c8744dd`; ethereum `0xbc345229c1b52e4c30530c614bb487323ba38da5` | ⚠️ Unaudited |
| FluidVaultT2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x43d1ca906c72f09d96291b4913d7255e241f428d`; ethereum `0x989a44cb4dbb7ebe20e0abf3c1e1d727bf90f881` | ⚠️ Unaudited |
| FluidVaultT2Operate | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7503b58bb29937e7e2980f70d3fd021b7ebea6d0` | ⚠️ Unaudited |
| FluidVaultT3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe210d8ded13abe836a10e8aa956dd424658d0034` | ⚠️ Unaudited |
| FluidVaultT4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3cac7cc6b0eed28e16331f08be7948bbfcb5acc` | ⚠️ Unaudited |
| GhoToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9db270c1b5e3bd161e8c8503c55ceabee709552` | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6b71e26c5e0845f74c812102ca7114b6a896ab2` | ⚠️ Unaudited |
| Groth16Verifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a526f919c391105ef251ddede15067027005234` | ⚠️ Unaudited |
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x435192a898a5ee86bbc8951471e5fbe721ba3f7a`; ethereum `0x6b5815467da09daa7dc83db21c9239d98bb487b5` | ⚠️ Unaudited |
| LendingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe1b4d34e8754600962cd944b535180bd758e6c2e` | ⚠️ Unaudited |
| LidoTreasuryConnector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7` | ⚠️ Unaudited |
| MellowSymbioticVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x08f39b3d75712148dacdb2669c3eacc7f1152547`; ethereum `0xe4357bdae017726ee5e83db3443bcd269bbf125d` | ⚠️ Unaudited |
| MellowVaultCompat | core_logic | non_address_book | non_address_book_inventory (excluded) | 5 | ethereum | n/a | 5 deployments: ethereum `0x3a828c183b3f382d030136c824844ea30145b4c7`; ethereum `0x64047dd3288276d70a4f8b5df54668c8403f877f`; ethereum `0x7f43fde12a40de708d908fb3b9bfb8540d9ce444`; ethereum `0x82f5104b23ff2fa54c2345f821dac9369e9e0b26`; ethereum `0xc65433845ecd16688eda196497fa9130d6c47bd8` | ⚠️ Unaudited |
| MockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe90ec12369fbbcbcdaaa320da59134281458d16b` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ⚠️ Unaudited |
| Multicall | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba610d8c8c93580c19fb8800fc406227de8df947` | ⚠️ Unaudited |
| MultiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 13 | ethereum | n/a | 13 deployments: ethereum `0x24183535a24cf0272841b05047a26e200ffab696`; ethereum `0x375a8ee22280076610ca2b4348d37cb1beebeba0`; ethereum `0x49cd586dd9ba227be9654c735a659a1db08232a9`; ethereum `0x4f3cc6359364004b245ad5be36e6ad4e805dc961`; ethereum `0x7a4effd87c2f3c55ca251080b1343b605f327e3a`; ethereum `0x7b31f008c48efb65da78ea0f255ee424af855249`; ethereum `0x82dc3260f599f4fc4307209a1122b6eaa007163b`; ethereum `0x84631c0d0081fde56deb72f6de77abbbf6a9f93a`; ethereum `0x8c9532a60e0e7c6bbd2b2c1303f63ace1c3e9811`; ethereum `0xb908c9fe885369643adb5fba4407d52bd726c72d`; ethereum `0xbeef69ac7870777598a04b2bd4771c71212e6abc`; ethereum `0xcc36e5272c422bee9a8144cd2493ac472082ebad`; ethereum `0xd6e09a5e6d719d1c881579c9c8670a210437931b` | ⚠️ Unaudited |
| Oracles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6` | ⚠️ Unaudited |
| OsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x475e7d2bd7428deb68deaa933dbf0d5850b96702`; ethereum `0xf1c9acdc66974dfb6decb12aa385b9cd01190e38` | ⚠️ Unaudited |
| OsTokenConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59`; ethereum `0x2aae8335b7b24e83ecdd52588435a13ea7a22120`; ethereum `0xe8822246f8864da92015813a39ae776087fb1cd5` | ⚠️ Unaudited |
| OsTokenFlashLoans | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2` | ⚠️ Unaudited |
| OsTokenVaultController | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a261e60fb14586b474c208b1b7ac6d0f5000306`; ethereum `0xfe7083e5f1002471cf6fcb19b17770625a44b521` | ⚠️ Unaudited |
| PendleMarketV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09fa04aac9c6d1c6131352ee950cd67ecc6d4fb9` | ⚠️ Unaudited |
| PendleYieldToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 27 deployments: ethereum `0x029d6247adb0a57138c62e3019c92d3dfc9c1840`; ethereum `0x0310a860cf7efe8f54ab9b4de49cd071c37fcbcb`; ethereum `0x03722ce19e9f5828969d39474a8efc35c4ea3987`; ethereum `0x079f21309eb9cbd2a387972eb2168d57c8542e32`; ethereum `0x08aefe9dfe7818caaedd94e38e910d2155b7d2b0`; ethereum `0x11ccff2f748a0100dbd457ff7170a54e12064aba`; ethereum `0x1de6ff19fda7496ddc12f2161f6ad6427c52abbe`; ethereum `0x1e24b022329f3ca0083b12faf75d19639faebf6f`; ethereum `0x27f6f2f5e87a383471c79296c64e4e82269877f7`; ethereum `0x3568f1d2e8058f6d99daa17051cb4a2930c83978`; ethereum `0x48bbbedc4d2491cc08915d7a5c7cc8a8edf165da`; ethereum `0x4a8036efa1307f1ca82d932c0895faa18db0c9ee`; ethereum `0x5d8b3cd632c58d5ce75c2141c1c8b3b0c209b3ed`; ethereum `0x5db8a2391a72f1114bbae30efc9cd89f4a29f988`; ethereum `0x708dd9b344ddc7842f44c7b90492cf0e1e3eb868`; ethereum `0x719b51dd92b7809a80a2e8c91d89367bf58f1d7a`; ethereum `0x733ee9ba88f16023146ebc965b7a1da18a322464`; ethereum `0x77de4be22ecc633416d79371ef8e861fb1d2cc39`; ethereum `0x7b64b99a1fd80b6c012e354a14adb352b5916ce1`; ethereum `0x89e7f4e5210a77ac0f20511389df71ec98ce9971`; ethereum `0x946934554a2bf59039661f971986f0223e906264`; ethereum `0x96512230bf0fa4e20cf02c3e8a7d983132cd2b9f`; ethereum `0xaac7db6c2bc926ade954d69a2d705f059043ea02`; ethereum `0xb7e51d15161c49c823f3951d579ded61cd27272b`; ethereum `0xbe05538f48d76504953c5d1068898c6642937427`; ethereum `0xe8ef806c8aadc541408dcad36107c7d26a391712`; ethereum `0xeb993b610b68f2631f70ca1cf4fe651db81f368e` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481f28c0d733614af87897e43d0d52c451799592` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8023518b2192fb5384dadc596765b3dd1cdfe471`; ethereum `0xb31f53e30b9a033661e33b87c101c58ccf11d702` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c405f68d5c6ece868e5646cac926679839acd68`; ethereum `0x63a11f0c3217331aa33e7a524b195a1faaa8d7fe` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df`; ethereum `0xd1062547981471b821755c13cafa0f13d099705a`; ethereum `0xeef36320ee5d9f258e22ffc93df8619ec04acdd3` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a`; ethereum `0x9ace2068dcd9491d3e5a23551b6877658e1b4cf9`; ethereum `0x9f805fc8679e5f81a0683c3203ad48417efdad12`; ethereum `0xbe23bb6d817c08e7ec4cd0adb0e23156189c1ba9` | ⚠️ Unaudited |
| RewardEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d34aee72325f1d4a748f13c2169404523ecee0` | ⚠️ Unaudited |
| RewardSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x439b60d3c886e711dad30cf23a2bbd5388febcd9`; ethereum `0x67561ca10e0c03600fc78bb7ba19ec32886aca9b`; ethereum `0xe00512e3f38ec4f4e79152474da215506b5b1902` | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x256af27ce81282a0491a5361172c1db08f6cc5f8`; ethereum `0x8c512fc12bd55a074444ce3e0b2e1dd0638b1dba`; ethereum `0x90a9428b8c58ca80b28aaf46b936d42e87797449` | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb`; ethereum `0xadb2c15fde49d1a4294740acb650de94184e66b2` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c`; ethereum `0x31319866778a5223633bd745780bb6d59406371e`; ethereum `0xaa33e5ecae01779b26cd9dbd3c62e34c29b2d565` | ⚠️ Unaudited |
| RlpPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1`; ethereum `0xae2364579d6cb4bbd6695846c1d595ca9af3574d` | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x093285c34515c01a55e15a25812bcf87e7ab0dc6`; ethereum `0x2d748a6dd7a0dc546f092f12b0d0285cbc82a2c0`; ethereum `0x40b988e4ee43351c679291b868fa35dc4caa0580` | ⚠️ Unaudited |
| RumpelWalletFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5774abcf415f34592514698eb075051e97db2937` | ⚠️ Unaudited |
| SharedMevEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07a98f01f5a91043f1396f101a21e91e90488a2f`; ethereum `0x48319f97e5da1233c21c48b80097c0fb7a20ff86` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x14219845c6b7984aa5ec0a39754dcc327169de32`; ethereum `0xab17c1fe647c37ceb9b96d1c27dd189bf8451978` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf`; ethereum `0x5daa068b9592781ad49235838fdd38e2d162084b` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x234c908e749961d0329a0ed5916d55a99d1ad06c`; ethereum `0x2718729fb710cf17fcc9293214c575c58526b654` | ⚠️ Unaudited |
| SimpleOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28`; ethereum `0xd2ee2776f34ef4e7325745b06e6d464b08d4be0e` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x35533f54740f1f1aa4179e57ba37039dfa16868b`; ethereum `0x46c1c168ca597b9e5423aa7081a0dce782caeaab`; ethereum `0xb1b385542b6e80f77b94393ba8342c3af699f15c` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x35e5db674d8e93a03d814fa0ada70731efe8a4b9`; ethereum `0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | ⚠️ Unaudited |
| SimpleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x4956b52ae2ff65d74ca2d61207523288e4528f96`; ethereum `0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110`; ethereum `0xef4c4bcbe105170810b6ef58a286d9ce97a1fabe` | ⚠️ Unaudited |
| StakedEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82fe8c78cae0013471179e76224ef89941baaa75` | ⚠️ Unaudited |
| StakedTokenDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x53c5b703465234f97c5a7b17b602c6224a08031e`; ethereum `0x6ac1f64931e0fd9582a095090fab2e838904dbaf`; ethereum `0xbac23ec6ccab8631f500ecb6c01ea0ee0b72ac69`; ethereum `0xbb2213e9a4515174d433cd75cc2695043c85e32c` | ⚠️ Unaudited |
| StakedUSDeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6bf967288ffef9420b142fb97ccf236584bac41d` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0da21d330f3f75d730a1b5f1535ca75061cabf61`; ethereum `0x56abf7334e2b4c2ec925a59cb2994a1a7632ecc2` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4`; ethereum `0xba1600735a039e2b3bf1d1d2f1a7f80f45973da7` | ⚠️ Unaudited |
| StUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcf3e9da6190997ca7b1f46a2568caa29575678bd`; ethereum `0xf8391a4c2e964c7b175d4027cb384ae73784c46b` | ⚠️ Unaudited |
| swETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xf951e335afb289353dc249e82926178eac7ded78` | ⚠️ Unaudited |
| TestnetERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabb15848b98d3ef7ad20a69127b003c7613cbea7` | ⚠️ Unaudited |
| TheCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa27a69ae180e202fde5d38189a3f24fe24e55861`; ethereum `0xc7ab90c2ea9271efb31f5fa2843eeb4b331eafa0` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290d9544669c9c7a64f6899a0a3b28d563f6ebee` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0795ab0dc75497a2c3f6345f2de0feef0eaa28c3`; ethereum `0x2998d40665a70a6fc639277790f373905b51c670` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x47ebb00945bfb1e85d2e00f3f7d9633ca611b8ed`; ethereum `0x58ca83c78d2aba5d8e81d824a5396cb4373e9a16` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa411cc80837b0400cd7781977dfdfa30a5c94f9c`; ethereum `0xad64a54f041cb7a89b83f79c3b02ad78c584cf2e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb713c3eca7e1e7d8d5c62d131677b4905cd9d914`; ethereum `0xdc876ad435e5342742ff869b100f41c3373cef1b` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xacb7027f271b03b502d65feba617a0d817d62b8e`; ethereum `0xc657b23d01907e3af6f8678d47467b3865428691` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6`; ethereum `0xdce79568cc5a8f7598fd68c97475c4b0e56c76a8` | ⚠️ Unaudited |
| UniswapV3PointSellingController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x027d523cf78be66840b39576613ccdf9747ad581` | ⚠️ Unaudited |
| USDtb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea8a763b5b1f9c9c7aea64f33947448d9e39e475` | ⚠️ Unaudited |
| USDtbMinting | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3ddbf92077b850e29c4805df0a2459ae048416a` | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac85ef29192487e0a109b7f9e40c267a9ea95f2e` | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x8a93414f88f597922a9829df5f7c94b81bc46f64`; ethereum `0xf9c7c25fe58aaa494ee7ff1f6cf0b70d7c7ce88c` | ⚠️ Unaudited |
| UsrPriceStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f45180d6ffd0435d8dd695fd01320e6999c261c`; ethereum `0xc16b2a7a773c23e3e9d3325c7b173ef24fc2785d` | ⚠️ Unaudited |
| UsrRedemptionExtension | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x60a7b7915980ed34fde6e239618fadcf67897c37`; ethereum `0x7078c8b3687e4b2120e0a74e302a06dc51d52489`; ethereum `0xb69b2ea98f0fcef104b5cde7d9236601d8c96be6` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x2dabcea55a12d73191aece59f508b191fb68adac`; ethereum `0xbe3ca34d0e877a1fc889bd5231d65477779aff4e` | ⚠️ Unaudited |
| VaultRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x231fa76fd55284082ec5aba51272b9ff68331c3c`; ethereum `0x414f02cab70c7aac64b96797d31da932c817539a`; ethereum `0x4cbd14a4b70ef6379ebcdec6b10bd2326f7af11e`; ethereum `0x651ef84af5737b96277fe2f452bdf471fda59890`; ethereum `0x7f8053dded76e189adde3013127f8ef47613d956`; ethereum `0xc1386579b90efdc6f1ffa88a57191f1bf81784a2`; ethereum `0xe61f34598ebf706c924f1c7be962041169b7c87b` | ⚠️ Unaudited |
| VaultsRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a0008a588772446f6e656133c2d5029cc4fc20e`; ethereum `0xbbe532578979b8cb4ebb077b46442fc420ba0bc2` | ⚠️ Unaudited |
| VaultTokenized | core_logic | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 3 deployments: ethereum `0x65b560d887c010c4993c8f8b36e595c171d69d63`; ethereum `0xb8fd82169a574eb97251bf43e443310d33ff056c`; ethereum `0xc10a7f0ac6e3944f4860ee97a937c51572e3a1da` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x057d761e9e9fa14a85b66f99d1061792ddbe1cde`; ethereum `0xd27ff95735bb7bc49bc366d72f9fe5d8e737411b` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x09dcfa3fe4b893bd15bb277c0b47b4f29ed860c6`; ethereum `0x68aa53e4388c1da05e7c515bb3b7f8bf80d60379` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x122ba98731660c57dde28474707bb2dfdcb32ac6`; ethereum `0x7d530513cca8b08f27786eab254f5f76201b5dda` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1d56d22faad298d08f689b101a28ea1edb851999`; ethereum `0xfad0783a3bc76f3dc4fd853787f6b07d65975005` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x253c2d5826088b3141b44906863ae2d717c5a65e`; ethereum `0x7e59b417dedb62e6b2f57b348f3aea4a98abfa7b` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5c996059b9ce40c236d24c2e49464d852a945778`; ethereum `0xd1a6c3ac42115b23ed78ad74342357aff17b6e32` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcdfb1fbf2afe9d4719f179a784daf713a1bc8253`; ethereum `0xdb46cc52a59f770471d4cafcff5266a11aa955c7` | ⚠️ Unaudited |
| WrappedDollarVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd2de09815f678f2997f0a3cddf3381aa3a12d3b7`; ethereum `0xd961c80b162efc9f89ad035cbc52935983f9b5cd` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ed5485d079d7f0cfa8e395499b3c01a6c359cc0` | ⚠️ Unaudited |
| WstUSR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x878943125019b86aeb0e97f36fb4f1dc5c43dd34`; ethereum `0x8b480bfc04492229c631686f94dc50b7bcc44ee6` | ⚠️ Unaudited |
| ZtakingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf047ab4c75cebf0eb9ed34ae2c186f3611aeafa6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e426b153e74ab36b2685c3a464272de60888ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35af40bb950b0fe3bd7afe1520b86abd30a7d593` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e2cc1584a2fb4fb2d4f4af68ae47b57be76dc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630f27632762ae7f7a91eaca4c3949cc765294de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932f09367e7e52b6ab812d8825fa764730b936fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa42ef8f408d60747415135341af753e1caad593e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad0627a043a44e3657292790f364d95833a1f6fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf826882b612a0bff93d3deca87bb4198d9fed29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ecc7620416bd65bfab7010b0db955a0e49579a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe7f6af0bd57de1e9ec60d168e38348044fe6763` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 188
- Live contracts: 0
- Unknown liveness contracts: 188
- Source-verified contracts: 167
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=92, contamination review=3, source verified unclassified=72, unverified unclassified=21

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | ProxyAdmin<br>`0x63a11f0c3217331aa33e7a524b195a1faaa8d7fe` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x0c24fc53d7aa7033698ea1eb0cba392d872b7ae5` |
| ethereum | source verified unclassified | USDtb<br>`0xea8a763b5b1f9c9c7aea64f33947448d9e39e475` | non_address_book | unknown | unknown | verified | n/a | `0x0c24fc53d7aa7033698ea1eb0cba392d872b7ae5` |
| ethereum | candidate review | ERC1967Proxy<br>`0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthBlocklistErc20Vault<br>`0x0b4f6bfb694790051e0203db83edbb5888099556` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthBlocklistErc20Vault<br>`0x84d44a696539b3ef4162184fb8ab97596a311e9e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthBlocklistErc20Vault<br>`0xc25529b4ee01cc6262146433b6509e9e6e30f14a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthBlocklistVault<br>`0x00e3af59e2496d030e5b2c629784db284fd4cd3c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthBlocklistVault<br>`0x2d29f3f4228fcaa9238201362ace42821ed4bcad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthBlocklistVault<br>`0xd19e4b1d680a6aa672b08ebf483381bc0c9c8478` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthErc20Vault<br>`0x3acdbdbf0459d376df9378c02af50c83dc7646e9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthErc20Vault<br>`0x7e5198df09fed891e7aecd623cd2231443ceb5d5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthErc20Vault<br>`0x8ee00c149299dd1b051a7ca9cc2a7a1d706773de` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthErc20Vault<br>`0xca866585ecfdfcc98348ef2717b811626ed98207` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthGenesisVault<br>`0x124c33d07f94b31adf87c12f7ca3a586d3510928` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthGenesisVault<br>`0x2d491bb32610a0ef1de017e49f949b3799135f31` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthGenesisVault<br>`0x7aa02b4cf39f98ffeb324325775f840d18549733` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthGenesisVault<br>`0x9481a47c5650a868839c6511f0eef8bf962fabd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthOsTokenVaultEscrow<br>`0x09e84205df7c68907e619d07afd90143c5763605` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthPrivErc20Vault<br>`0x28f325dd287a5984b754d34cfca38af3a8429e71` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthPrivErc20Vault<br>`0x453056f0bc4631abb15eec656139f88067668e3e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthPrivErc20Vault<br>`0x9488a7dd178f0d927707eec61a7d8c0ae9558c88` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthPrivErc20Vault<br>`0xf5f20572186d2fab233dadd753c053ab581ba69a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthPrivVault<br>`0x135f45e0179dd928e73422b40bdc6c5d7047a035` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthPrivVault<br>`0x81ab00dd782492d62105b8fa9b03e82d4b57798c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthPrivVault<br>`0xb1bfaf188a6ce50f21486fcbd77c1a8e908197fb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthPrivVault<br>`0xb53a6c402b0d4fb6c7aa59b7d8fbd2e884fbf3bc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakeBlocklistErc20Vault<br>`0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakeBlocklistVault<br>`0x3e30370cabd4b4d95be17706d840ff9de1addb67` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakeErc20Vault<br>`0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakePrivErc20Vault<br>`0xedebe792c6190be612cbe97f628137faa8c36ee5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakePrivVault<br>`0x792ff341e1db4ab20fbfb93c0fc071501525e353` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakeVault<br>`0x59adb46407ebf4cba923f91f2c06acc4b2e073bb` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakeVaultFactory<br>`0x026df36ec050e7f473cbfc30aa42946d3ed11b2c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakeVaultFactory<br>`0x32634dec69d4523d2f980be92494dc03bd4c9fce` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakeVaultFactory<br>`0x44ecc30bcc64b832a2cb5d1ff44260b1fcc565e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakeVaultFactory<br>`0x6a2835087c6809902a2f39b86fe64ef5dacc31e1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakeVaultFactory<br>`0x807305c086a99cbdbff07cb4256ce556d9d6f0af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthRestakeVaultFactory<br>`0xf63666399aa1af203bfc9171147edcb21a6bf3a2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVault<br>`0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVault<br>`0x35dc754f157b32ba0941ffcd89d16d3d0b2ca6cf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVault<br>`0xba0b5ba961b108bff8d761a256e9763a4fccff23` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVault<br>`0xdecb606ee9140f229df78f9e40041ead61610f8f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x170618936cd96b1ed8112ec3d3778374b38dfe5e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x1be3ad178d85ce1b6a7fcf5baefe68f26541b07c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x2a0335fb13cbf86a76a7f9d9d038389788667960` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x42fe3bf8c18b87007e8c100daccb7fe4ea07f699` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x4e3d8197c2cb9bcd29e3dceae3670d3d5e774017` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x5518052f2d898f062ee59964004a560f24e2ee7d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x58fdd303ab66722130c01533e7a1177f2b3a2949` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x5f31ed13ebf81b67a9f9498f3d1d2da553058988` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x6ddc10eeeebbbcf00e784ba44fe4b038af26cb53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x7a4f9912a812d932da57d73cb5e5784b2c1cba4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x8750594b33516232e751c8b9c350a660cd5f1bb8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0x96fff3a26b29bf7700dbb475730b373afee175ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0xb7832c9e93e54661354c8b88f3ce7c0915f4c896` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0xd2468daaeb6f2d4b354dbd74593f4ac8c58f2cba` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0xdada5a8e3703b1e3ea2bae5ab704627eb2659fcc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0xe84183effbcc76d022cccc31b95eaa332bb5bb11` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0xe9f3e6115fed87f36bf10c8c111fb7b20b27ba0f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0xf3c94c38b4def16a20715b90918052c34adaf3b8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0xfaa05900019f6e465086bce16bb3f06992715d53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | EthVaultFactory<br>`0xff0650ba2387843f567e6962f1b7c96dc99362ca` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | RewardSplitter<br>`0x439b60d3c886e711dad30cf23a2bbd5388febcd9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | RewardSplitter<br>`0x67561ca10e0c03600fc78bb7ba19ec32886aca9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | RewardSplitter<br>`0xe00512e3f38ec4f4e79152474da215506b5b1902` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | contamination review | EthValidatorsChecker<br>`0xac9125646185cb58e86e77d5f402efa3fafafc84` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | contamination review | OsTokenFlashLoans<br>`0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | contamination review | SharedMevEscrow<br>`0x07a98f01f5a91043f1396f101a21e91e90488a2f` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | CumulativeMerkleDrop<br>`0x849da65afed8483152f8baa75f776c6f2c02e540` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | CumulativeMerkleDrop<br>`0xf6bbbc05536ab198d4b7ab74a93f8e2d4cad5354` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | Keeper<br>`0x435192a898a5ee86bbc8951471e5fbe721ba3f7a` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | Oracles<br>`0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | OsToken<br>`0x475e7d2bd7428deb68deaa933dbf0d5850b96702` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | OsTokenConfig<br>`0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | OsTokenConfig<br>`0x2aae8335b7b24e83ecdd52588435a13ea7a22120` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | OsTokenConfig<br>`0xe8822246f8864da92015813a39ae776087fb1cd5` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | OsTokenVaultController<br>`0xfe7083e5f1002471cf6fcb19b17770625a44b521` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | Pool<br>`0x481f28c0d733614af87897e43d0d52c451799592` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | PriceFeed<br>`0x8023518b2192fb5384dadc596765b3dd1cdfe471` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | PriceFeed<br>`0xb31f53e30b9a033661e33b87c101c58ccf11d702` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | RewardEthToken<br>`0x01d34aee72325f1d4a748f13c2169404523ecee0` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | RewardSplitterFactory<br>`0x8c512fc12bd55a074444ce3e0b2e1dd0638b1dba` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | RewardSplitterFactory<br>`0x90a9428b8c58ca80b28aaf46b936d42e87797449` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | StakedEthToken<br>`0x82fe8c78cae0013471179e76224ef89941baaa75` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | source verified unclassified | VaultsRegistry<br>`0xbbe532578979b8cb4ebb077b46442fc420ba0bc2` | non_address_book | unknown | unknown | verified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3e2cc1584a2fb4fb2d4f4af68ae47b57be76dc65` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x574952ec88b2fc271d0c0db130794c86ea42139a` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x630f27632762ae7f7a91eaca4c3949cc765294de` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x932f09367e7e52b6ab812d8825fa764730b936fe` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2ecc7620416bd65bfab7010b0db955a0e49579a` | non_address_book | unknown | unknown | unverified | n/a | `0x229f53ef905545aa53a721d82dbfe4ced7aff65d` |
| ethereum | candidate review | MockToken<br>`0xe90ec12369fbbcbcdaaa320da59134281458d16b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x0795ab0dc75497a2c3f6345f2de0feef0eaa28c3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x47ebb00945bfb1e85d2e00f3f7d9633ca611b8ed` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x5c996059b9ce40c236d24c2e49464d852a945778` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xa411cc80837b0400cd7781977dfdfa30a5c94f9c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xdc876ad435e5342742ff869b100f41c3373cef1b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | StakedUSDeV2<br>`0x6bf967288ffef9420b142fb97ccf236584bac41d` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | VaultRouter<br>`0x231fa76fd55284082ec5aba51272b9ff68331c3c` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | VaultRouter<br>`0x414f02cab70c7aac64b96797d31da932c817539a` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | VaultRouter<br>`0x4cbd14a4b70ef6379ebcdec6b10bd2326f7af11e` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | VaultRouter<br>`0x651ef84af5737b96277fe2f452bdf471fda59890` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | VaultRouter<br>`0x7f8053dded76e189adde3013127f8ef47613d956` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | VaultRouter<br>`0xc1386579b90efdc6f1ffa88a57191f1bf81784a2` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | VaultRouter<br>`0xe61f34598ebf706c924f1c7be962041169b7c87b` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | WrappedDollarVault<br>`0x122ba98731660c57dde28474707bb2dfdcb32ac6` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | WrappedDollarVault<br>`0x1d56d22faad298d08f689b101a28ea1edb851999` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | WrappedDollarVault<br>`0x253c2d5826088b3141b44906863ae2d717c5a65e` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | WrappedDollarVault<br>`0x68aa53e4388c1da05e7c515bb3b7f8bf80d60379` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | WrappedDollarVault<br>`0xcdfb1fbf2afe9d4719f179a784daf713a1bc8253` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | WrappedDollarVault<br>`0xd1a6c3ac42115b23ed78ad74342357aff17b6e32` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | WrappedDollarVault<br>`0xd27ff95735bb7bc49bc366d72f9fe5d8e737411b` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | source verified unclassified | WrappedDollarVault<br>`0xd2de09815f678f2997f0a3cddf3381aa3a12d3b7` | non_address_book | unknown | unknown | verified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2998d40665a70a6fc639277790f373905b51c670` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x35af40bb950b0fe3bd7afe1520b86abd30a7d593` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58ca83c78d2aba5d8e81d824a5396cb4373e9a16` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa42ef8f408d60747415135341af753e1caad593e` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xad0627a043a44e3657292790f364d95833a1f6fc` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xad64a54f041cb7a89b83f79c3b02ad78c584cf2e` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaf826882b612a0bff93d3deca87bb4198d9fed29` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb713c3eca7e1e7d8d5c62d131677b4905cd9d914` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe7f6af0bd57de1e9ec60d168e38348044fe6763` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | WrappedDollarVault<br>`0x057d761e9e9fa14a85b66f99d1061792ddbe1cde` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | WrappedDollarVault<br>`0x09dcfa3fe4b893bd15bb277c0b47b4f29ed860c6` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | WrappedDollarVault<br>`0x7d530513cca8b08f27786eab254f5f76201b5dda` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | WrappedDollarVault<br>`0x7e59b417dedb62e6b2f57b348f3aea4a98abfa7b` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | WrappedDollarVault<br>`0xd961c80b162efc9f89ad035cbc52935983f9b5cd` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | WrappedDollarVault<br>`0xdb46cc52a59f770471d4cafcff5266a11aa955c7` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | unverified unclassified | WrappedDollarVault<br>`0xfad0783a3bc76f3dc4fd853787f6b07d65975005` | non_address_book | unknown | unknown | unverified | n/a | `0x3aa3fd1b762cac519d405297ce630bed30430b00` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x093285c34515c01a55e15a25812bcf87e7ab0dc6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x0da21d330f3f75d730a1b5f1535ca75061cabf61` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x1fc1bc7ef87ace92a3f2eed44581111eb1ffdeaf` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x234c908e749961d0329a0ed5916d55a99d1ad06c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x2d748a6dd7a0dc546f092f12b0d0285cbc82a2c0` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x46c1c168ca597b9e5423aa7081a0dce782caeaab` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x4956b52ae2ff65d74ca2d61207523288e4528f96` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x66a1e37c9b0eaddca17d3662d6c05f4decf3e110` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x6c8984bc7dbbedaf4f6b2fd766f16ebb7d10aab4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x75ec066efb238cf211baa73b28db539541493c70` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x7f45180d6ffd0435d8dd695fd01320e6999c261c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0x8b480bfc04492229c631686f94dc50b7bcc44ee6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xab17c1fe647c37ceb9b96d1c27dd189bf8451978` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xacb7027f271b03b502d65feba617a0d817d62b8e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xadb2c15fde49d1a4294740acb650de94184e66b2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xae2364579d6cb4bbd6695846c1d595ca9af3574d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xb1b385542b6e80f77b94393ba8342c3af699f15c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xc31389794ffac23331e0d9f611b7953f90aa5fdc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xd2ee2776f34ef4e7325745b06e6d464b08d4be0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xf8391a4c2e964c7b175d4027cb384ae73784c46b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | candidate review | TransparentUpgradeableProxy<br>`0xf9c7c25fe58aaa494ee7ff1f6cf0b70d7c7ce88c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | AddressesWhitelist<br>`0x2d00499079d7145163a213ab1443056cce6b0f77` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | AddressesWhitelist<br>`0x5943026e21e3936538620ba27e01525bba311255` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | AddressesWhitelist<br>`0xfff16789c95d987c214bcba466e26dfc5dc01ad6` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | DineroTreasuryConnector<br>`0x9971f773f96f1223c2befa4aa4562ea5ce0af812` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | ExternalRequestsManager<br>`0x1de327c23ed8f52f797d55b31abce98cb46c8ea9` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | ExternalRequestsManagerBetaV1<br>`0x052b1cacbdea7b4d711c6f428a20618ef60fda1b` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | ExternalRequestsManagerBetaV1<br>`0x3ed5dc199d8bce1e1a9ed8520a215ae9af9bd45d` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | ExternalRequestsManagerBetaV1<br>`0x8ade71febab1337ce08062fe5208a611ee6e86e9` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | ExternalRequestsManagerBetaV1<br>`0xda6cef7f667d992a60eb823ab215493aa0c6b360` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | RewardDistributor<br>`0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | RewardDistributor<br>`0x9ace2068dcd9491d3e5a23551b6877658e1b4cf9` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | RewardDistributor<br>`0xbe23bb6d817c08e7ec4cd0adb0e23156189c1ba9` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | RlpPriceAggregatorV3Interface<br>`0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | RlpPriceStorage<br>`0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | RlpPriceStorage<br>`0x31319866778a5223633bd745780bb6d59406371e` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | RlpPriceStorage<br>`0x5e90b0a657643c08a45cbd6a06337b37c98e1aa1` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | RlpPriceStorage<br>`0xaa33e5ecae01779b26cd9dbd3c62e34c29b2d565` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | RlpUpOnlyPriceStorage<br>`0x40b988e4ee43351c679291b868fa35dc4caa0580` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | SimpleOFTAdapter<br>`0x14219845c6b7984aa5ec0a39754dcc327169de32` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | SimpleOFTAdapter<br>`0x2718729fb710cf17fcc9293214c575c58526b654` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | SimpleOFTAdapter<br>`0x5daa068b9592781ad49235838fdd38e2d162084b` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | SimpleOFTAdapter<br>`0xc4543073bfaba77781b46dfb4d43b5ae4e30eb28` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | SimpleToken<br>`0x35533f54740f1f1aa4179e57ba37039dfa16868b` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | SimpleToken<br>`0x35e5db674d8e93a03d814fa0ada70731efe8a4b9` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | SimpleToken<br>`0xef4c4bcbe105170810b6ef58a286d9ce97a1fabe` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | StUSR<br>`0x56abf7334e2b4c2ec925a59cb2994a1a7632ecc2` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | StUSR<br>`0xba1600735a039e2b3bf1d1d2f1a7f80f45973da7` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | StUSR<br>`0xcf3e9da6190997ca7b1f46a2568caa29575678bd` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | Timelock<br>`0x290d9544669c9c7a64f6899a0a3b28d563f6ebee` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | Treasury<br>`0xc657b23d01907e3af6f8678d47467b3865428691` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | TreasuryIntermediateEscrow<br>`0xdce79568cc5a8f7598fd68c97475c4b0e56c76a8` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | USRPriceAggregatorV3Interface<br>`0x8a93414f88f597922a9829df5f7c94b81bc46f64` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | UsrPriceStorage<br>`0xc16b2a7a773c23e3e9d3325c7b173ef24fc2785d` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | UsrRedemptionExtension<br>`0x60a7b7915980ed34fde6e239618fadcf67897c37` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | UsrRedemptionExtension<br>`0x7078c8b3687e4b2120e0a74e302a06dc51d52489` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | UsrRedemptionExtension<br>`0xb69b2ea98f0fcef104b5cde7d9236601d8c96be6` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | WstUSR<br>`0x6ed5485d079d7f0cfa8e395499b3c01a6c359cc0` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |
| ethereum | source verified unclassified | WstUSR<br>`0x878943125019b86aeb0e97f36fb4f1dc5c43dd34` | non_address_book | unknown | unknown | verified | n/a | `0x8729dae4370a1cf21f28c95f9e736e69995358bc` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024.04.25 FPS Points Tokenization.pdf](https://github.com/sense-finance/point-tokenization-vault/blob/main/audits/2024.04.25%20FPS%20Points%20Tokenization.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2024.07.22 Darklinear Rumpel Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.22%20Darklinear%20Rumpel%20Wallet.pdf) | Darklinear | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [2024.07.15 FPS Rumpel Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.15%20FPS%20Rumpel%20Wallet.pdf) | FPS | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [audits.sherlock.xyz/contests/494](https://audits.sherlock.xyz/contests/494) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2953] 2024.04.25 FPS Points Tokenization.pdf — no match: Scope section explicitly lists PToken.sol and PointTokenVault.sol as in-scope files.
- [2954] 2024.07.22 Darklinear Rumpel Wallet.pdf — no match: No reason recorded
- [2955] 2024.07.15 FPS Rumpel Wallet.pdf — no match: Only RumpelGuard.sol is explicitly named in scope; Gnosis Safe code is out of scope.
- [2956] audits.sherlock.xyz/contests/494 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names, scope section, or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024.04.25 FPS Points Tokenization.pdf | PToken | unmatched — not counted | — | listed in scope | no |
| 2024.04.25 FPS Points Tokenization.pdf | PointTokenVault | unmatched — not counted | — | listed in scope | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | PToken | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | PointTokenVault | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | RumpelGuard | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | RumpelModule | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | RumpelWalletFactory | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | SignMessageLib | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | SignatureValidationBeacon | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | SignatureValidationImplementation | unmatched — not counted | — | — | no |
| 2024.07.22 Darklinear Rumpel Wallet.pdf | compatibilityFallbackHandler | unmatched — not counted | — | — | no |
| 2024.07.15 FPS Rumpel Wallet.pdf | RumpelGuard | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 107 |
| upstream | 7 |
| standard_library | 6 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: n/a

Zero-match audit list:

- [2953] 2024.04.25 FPS Points Tokenization.pdf
- [2954] 2024.07.22 Darklinear Rumpel Wallet.pdf
- [2955] 2024.07.15 FPS Rumpel Wallet.pdf
- [2956] audits.sherlock.xyz/contests/494

Fork inheritance lineage and inherited audits are included when available.
