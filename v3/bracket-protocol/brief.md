# Agentic Audit Brief: Bracket Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Bracket Protocol (`bracket-protocol`)
- Website: [https://www.bracket.fi/](https://www.bracket.fi/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum
- Contract surface: 70 unique implementations (146 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,921,478.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Bracket Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, ethereum. Structural roles: 1 core, 1 supporting. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: erc1967proxy (2), accesscontrol (1), erc165 (1), erc20 (1), erc20permit (1), pausable (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 69 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 1 of 70 unique; 69 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/60
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 70
- Raw deployments: 146
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 1 | 1.7% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BrktETH | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381410 | 2 deployments: ethereum `0x22ad51adcb087ed283f05173e1db478c0bdc0640`; ethereum `0x6c8550167bbd06d4610a6a443ecbed84bd1accd6` | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AETH_R21 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe95a203b1a91a908f9b9ce46459d101078c2c3cb` | ⚠️ Unaudited |
| BracketVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4eeec646460b6fef19af46bf4e97bdd9335ecef2`; ethereum `0x8c24dda4b2124d0fd8334d731ea345c7745c00d1` | ⚠️ Unaudited |
| BracketVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f0732ac12118b05abd546d004a40a07f98b965d` | ⚠️ Unaudited |
| BracketVaultLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0072e80b04c17bfd6c6d0a21a17ae118defa7085`; ethereum `0xcdc3a8374532ddb762c76604f30f6a9fdd29082c` | ⚠️ Unaudited |
| BracketVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3a77cd78c21f5b0c7d33a8fab4a0c6f91aaab7f6`; ethereum `0x661011d6a33832d5e77b59ea445edea474c587d8` | ⚠️ Unaudited |
| BracketVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x3ce19f1ce4ae4ce942292ac6c37b0ec35cd318cb`; ethereum `0x4d8d0598230f1676f8783a8dd6495f79859e1b00`; ethereum `0x72de68f60328b6aec427454b9c9a25615b480a8a`; ethereum `0x7abf0a21f3dcaaba172df0b3ad2d35d1cd68b7f2`; ethereum `0x80aa1236b107ef19045f25d9b3c830ff78a5331e`; ethereum `0xa298b8aa1068a42cedd5b99c4eab618488af43d5`; ethereum `0xa99f018e4ca5cfd6f224f9cee7b110a6793a0f52` | ⚠️ Unaudited |
| BracketVaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6b3c487662d58fb15d8dede46be20a77a92dbb4d`; ethereum `0xf29de913ffeccd43ac4b5b84b734a0438afb6e9c` | ⚠️ Unaudited |
| BracketWrappedVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a5e0e5a5a11be269ee94be6dda8bd9379e8a6c2` | ⚠️ Unaudited |
| BracketWrappedVault | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | ethereum | n/a | 5 deployments: ethereum `0x3ebfa39649efb8aa0b4e8dcccd25884d8223c1ee`; ethereum `0x6fe42aab01b5974df712ebb63916a3386bad62d0`; ethereum `0x7309e1e2e74af170c69bde8fcb30397f8697d5ff`; ethereum `0x91094d333e018f81874d62e27522479bec131b5f`; ethereum `0xa4f059bbfa047bfbb02725545084639e6552d4f4` | ⚠️ Unaudited |
| BrktETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4f104694bec6d9b1745ea0c945826d3132d145a` | ⚠️ Unaudited |
| BrktETHRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb3358afef9bd888d8bfed436c4ef072600397cc` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x849da65afed8483152f8baa75f776c6f2c02e540`; ethereum `0xf6bbbc05536ab198d4b7ab74a93f8e2d4cad5354` | ⚠️ Unaudited |
| DepositDataRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75ab6ddce07556639333d3df1eaa684f5735223e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x574952ec88b2fc271d0c0db130794c86ea42139a`; ethereum `0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xe3c02a1a282ec597538f946bc2f41108fd9a20fe`; ethereum `0xecec1ab27245aef65fcd0439d6cf69b5b959b90f` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0b4f6bfb694790051e0203db83edbb5888099556`; ethereum `0x5f31ed13ebf81b67a9f9498f3d1d2da553058988` | ⚠️ Unaudited |
| EthBlocklistErc20Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x84d44a696539b3ef4162184fb8ab97596a311e9e`; ethereum `0xc25529b4ee01cc6262146433b6509e9e6e30f14a` | ⚠️ Unaudited |
| EthBlocklistVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x00e3af59e2496d030e5b2c629784db284fd4cd3c`; ethereum `0x2d29f3f4228fcaa9238201362ace42821ed4bcad`; ethereum `0xd19e4b1d680a6aa672b08ebf483381bc0c9c8478` | ⚠️ Unaudited |
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
| Keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x435192a898a5ee86bbc8951471e5fbe721ba3f7a`; ethereum `0x6b5815467da09daa7dc83db21c9239d98bb487b5` | ⚠️ Unaudited |
| KYCWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x153ae19301bdb53627bba296195270115b44fb21`; ethereum `0x162f86e588ba621828d74bb90e3138e9ace11183` | ⚠️ Unaudited |
| KYCWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x1925c36b0c09eec3a40303a3500c6594ea3e2f97`; ethereum `0x6a3babf2927f547ae29d37499562d9bbb13256d3` | ⚠️ Unaudited |
| KYCWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x599aa75908d32d01a5ae41692cadf24d89455bc3`; ethereum `0x90e3f797e1eaa5bb8967dc895fc07c1bab539feb` | ⚠️ Unaudited |
| KYCWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9cb91a72f1b99a771b57244feb8851abd07f7ac` | ⚠️ Unaudited |
| NavUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5fac6bc8646bb345178d7156153ae58ba3318e8b`; ethereum `0xfe7aadfad823b1c90480031e9046a085ef2c3788` | ⚠️ Unaudited |
| NavUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaacf9f4fde46e98b4e0d32ede3d4609547d7a425` | ⚠️ Unaudited |
| Oracles | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6` | ⚠️ Unaudited |
| OsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x475e7d2bd7428deb68deaa933dbf0d5850b96702`; ethereum `0xf1c9acdc66974dfb6decb12aa385b9cd01190e38` | ⚠️ Unaudited |
| OsTokenConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59`; ethereum `0x2aae8335b7b24e83ecdd52588435a13ea7a22120`; ethereum `0xe8822246f8864da92015813a39ae776087fb1cd5` | ⚠️ Unaudited |
| OsTokenFlashLoans | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2` | ⚠️ Unaudited |
| OsTokenVaultController | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2a261e60fb14586b474c208b1b7ac6d0f5000306`; ethereum `0xfe7083e5f1002471cf6fcb19b17770625a44b521` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481f28c0d733614af87897e43d0d52c451799592` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8023518b2192fb5384dadc596765b3dd1cdfe471`; ethereum `0xb31f53e30b9a033661e33b87c101c58ccf11d702` | ⚠️ Unaudited |
| RewardEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01d34aee72325f1d4a748f13c2169404523ecee0` | ⚠️ Unaudited |
| RewardSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x439b60d3c886e711dad30cf23a2bbd5388febcd9`; ethereum `0x67561ca10e0c03600fc78bb7ba19ec32886aca9b`; ethereum `0xe00512e3f38ec4f4e79152474da215506b5b1902` | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x256af27ce81282a0491a5361172c1db08f6cc5f8`; ethereum `0x8c512fc12bd55a074444ce3e0b2e1dd0638b1dba`; ethereum `0x90a9428b8c58ca80b28aaf46b936d42e87797449` | ⚠️ Unaudited |
| RSETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa1290d69c65a6fe4df752f95823fae25cb99e5a7` | ⚠️ Unaudited |
| SharedMevEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x07a98f01f5a91043f1396f101a21e91e90488a2f`; ethereum `0x48319f97e5da1233c21c48b80097c0fb7a20ff86` | ⚠️ Unaudited |
| StakedEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82fe8c78cae0013471179e76224ef89941baaa75` | ⚠️ Unaudited |
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xec70dcb4a1efa46b8f2d97c310c9c4790ba5ffa8` | ⚠️ Unaudited |
| VaultFactoryV2 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x01323e0054651adf2c10ce90351439840559c256`; ethereum `0x20249ea37549e9d42d0017a218f05c8c109207e1` | ⚠️ Unaudited |
| VaultRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb737f54637c5c66f47c6818c80ccc7a9a3a3c4e3` | ⚠️ Unaudited |
| VaultsRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a0008a588772446f6e656133c2d5029cc4fc20e`; ethereum `0xbbe532578979b8cb4ebb077b46442fc420ba0bc2` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18db91c744c7c144ffaec30c460e3ef62408a8d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e2cc1584a2fb4fb2d4f4af68ae47b57be76dc65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e5c325856679a8c60e7f90e1f69705be6c62783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x630f27632762ae7f7a91eaca4c3949cc765294de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63ad7c36af3d208b31d1f272d671230694488c78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e9ab10f4c4b9005e13195f94e4a2c6db041154` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x766bdbf28621f8392ff7b5dd0c74ce7f180082d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x932f09367e7e52b6ab812d8825fa764730b936fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2ecc7620416bd65bfab7010b0db955a0e49579a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd206701137299635191cf3cdf524b42923f97485` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FLZIojAWw6TSs5Wl4cKl1%2FBracket_Bracket_Wrapped_Vault_Updates_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf](https://2747094502-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FU4cJWTpKt8p39EIBK6mR%2Fuploads%2FzV05dwewKc7DXdBR3StG%2FBracket%20-%20KYC%20Whitelist_report%20(1).pdf) | Guardian | Audit | 2025-03 | aging | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [Bracket Rd.2 - LST Vault_report.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/AKOHIS45wGCYVmmPep7K/Bracket%20Rd.2%20-%20LST%20Vault_report.pdf) | Guardian | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [2024-01-20_Bracket.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/M58MmJtnx3aIcLSaocbO/2024-01-20_Bracket.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |
| [Bracket Fi Escrow - Zellic Audit Report.pdf](https://content.gitbook.com/content/U4cJWTpKt8p39EIBK6mR/blobs/RyVLVPDnszgXoTEA7sbU/Bracket%20Fi%20Escrow%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2753] spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf — no match: No reason recorded
- [2754] spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf — no match: No reason recorded
- [2755] Bracket Rd.2 - LST Vault_report.pdf — matched: Extracted contract names from findings locations and scope description. The audit report covers Bracket's LST management system with contracts BracketVault, VaultFactory, BrktETH, BracketOracle, IBracketVault, and RebalancingToken.
- [2756] 2024-01-20_Bracket.pdf — matched: Extracted contract names from findings and scope sections. Audit date from cover page.
- [2757] Bracket Fi Escrow - Zellic Audit Report.pdf — no match: Scope section explicitly lists BridgeEscrow.sol, EscrowBase.sol, MainEscrow.sol. Audit date is April 19, 2024 from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | BracketVault | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | BracketVaultV2 | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | BracketWrappedVault | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | KYCWhitelist | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | NavUpdater | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | RebasingToken | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf | VaultRouter | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | BracketVault | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | BrktETHRouter | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | Config | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | KYCWhitelist | unmatched — not counted | — | — | no |
| spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf | RebasingToken | unmatched — not counted | — | — | no |
| Bracket Rd.2 - LST Vault_report.pdf | BracketVault | unmatched — not counted | — | Listed in findings locations (e.g., BracketVault.sol:133) | no |
| Bracket Rd.2 - LST Vault_report.pdf | VaultFactory | unmatched — not counted | — | Listed in findings locations (e.g., VaultFactory.sol:32) | no |
| Bracket Rd.2 - LST Vault_report.pdf | BrktETH | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6c8550167bbd06d4610a6a443ecbed84bd1accd6` — deployed 2025-01-20 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bracket Rd.2 - LST Vault_report.pdf | BracketOracle | unmatched — not counted | — | Listed in findings locations (e.g., BracketOracle.sol) | no |
| Bracket Rd.2 - LST Vault_report.pdf | IBracketVault | unmatched — not counted | — | Listed in findings locations (e.g., IBracketVault.sol) | no |
| Bracket Rd.2 - LST Vault_report.pdf | RebalancingToken | unmatched — not counted | — | Mentioned in L-18 finding as a contract with totalSupply() discrepancy | no |
| 2024-01-20_Bracket.pdf | BrktETH | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x6c8550167bbd06d4610a6a443ecbed84bd1accd6` — deployed 2025-01-20 18:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-20_Bracket.pdf | BracketVault | unmatched — not counted | — | Listed in findings and scope | no |
| 2024-01-20_Bracket.pdf | BracketOracle | unmatched — not counted | — | Listed in findings and scope | no |
| 2024-01-20_Bracket.pdf | RebasingToken | unmatched — not counted | — | Listed in finding L-11 | no |
| Bracket Fi Escrow - Zellic Audit Report.pdf | BridgeEscrow | unmatched — not counted | — | listed in scope section | no |
| Bracket Fi Escrow - Zellic Audit Report.pdf | EscrowBase | unmatched — not counted | — | listed in scope section | no |
| Bracket Fi Escrow - Zellic Audit Report.pdf | MainEscrow | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: unique_name=2

Zero-match audit list:

- [2753] spaces/U4cJWTpKt8p39EIBK6mR/uploads/LZIojAWw6TSs5Wl4cKl1/Bracket_Bracket_Wrapped_Vault_Updates_report.pdf
- [2754] spaces/U4cJWTpKt8p39EIBK6mR/uploads/zV05dwewKc7DXdBR3StG/Bracket - KYC Whitelist_report (1).pdf
- [2757] Bracket Fi Escrow - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
