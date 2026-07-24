# Agentic Audit Brief: DxSale

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: DxSale (`dxsale`)
- Website: [https://dx.app](https://dx.app)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, bsc, celo, cronos, ethereum, fantom, gnosis, harmony, moonriver, polygon, zksync-era
- Contract surface: 355 unique implementations (395 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $15,243,348.93
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for DxSale in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 355 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 339
- Unique implementations: 355
- Raw deployments: 395
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

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BasicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8acf43c8255918041e2b40995e614451ee78b184` | ⚠️ Unaudited |
| CUSTOMTOKENDAPP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 2 deployments: gnosis `0xa3abeafa40ca4456c3fde2bad46d592515dae47b`; polygon `0xa3abeafa40ca4456c3fde2bad46d592515dae47b` | ⚠️ Unaudited |
| DxCustomDividendToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f1b52419009f8ab9c934ba559897904dd6b0284` | ⚠️ Unaudited |
| DxFire | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 4 deployments: ethereum `0x830cdef017761cc1db7214a4dd86f357ce789db7`; gnosis `0xfbcbd0dc41ee176bf67b20437667b5117c6adbc5`; celo `0x615c9ec24f2595528fe003782f6c706de0960098`; avalanche `0xf8f9292007a977e2275152d1947fc477d030f843` | ⚠️ Unaudited |
| DxLockLPDep | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x5b5e94485c9628793b01a38762921dc37b6829b6`; bsc `0xeb3a9c56d963b971d320f889be2fb8b59853e449`; gnosis `0x832ccf861059cb352515e89cc54f1b13c6620d37`; polygon `0x6fcc2e4efb4e05ddfc2154abe209356d5a687666` | ⚠️ Unaudited |
| DxNativeDividendToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4bf72a0d761bc31dca243ca5ee572dedf34e3604`; avalanche `0xe1cd76606ff0e859d53acd5da502fa70d5c74ed5` | ⚠️ Unaudited |
| DxStandardToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d37fb68b2679200844b57b2cf7a17260271589e` | ⚠️ Unaudited |
| hashFinder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ff131d69698e56f073ec60ef00274ebe216d20c` | ⚠️ Unaudited |
| PresaleOwnerFinalize | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x10f485b855be8e7d377fbe60e5d5676d88817b95`; ethereum `0x51f411d40641475576622c8fba77f1e917e96df4`; ethereum `0xaad287488c178f7fd663cf4f2c106da84fbbfeb4`; gnosis `0x3917ae2da199e2d029626308d557fba71f6d5e73`; gnosis `0x554d523a54471f12dde2152a7f33e159404d199e`; gnosis `0x857b52443bfb1af458e08f55886185cb128b401e`; gnosis `0xdb6e6d043447bed192a1a59a0bf4aac944bd225d`; polygon `0x335a1fc6140bd13e8b94568b53516a4db7af4db3`; polygon `0x554d523a54471f12dde2152a7f33e159404d199e`; polygon `0xb937c8731d015c898ff1cb2c13dc32bf6c612dd4`; polygon `0xdb6e6d043447bed192a1a59a0bf4aac944bd225d` | ⚠️ Unaudited |
| RouterDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xa5da59f5126ee48ffd44e184c489ef8b2e7cd7f9`; avalanche `0xef8b07f4adbe84508963eba7a269af60d7ad2e25` | ⚠️ Unaudited |
| RouterInterface | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd5071536d1a2aff6db130917b4c1fa7b8daf47ff` | ⚠️ Unaudited |
| StandardGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: gnosis `0xfcc9c5df19626413e0c2803f81762d5007d31cab`; polygon `0xed85dae67ff56335136beea446ad2aaf04b1ea6c` | ⚠️ Unaudited |
| TestTimToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc40767d0ae11c7f08e156b59fa2e54bba2ce378` | ⚠️ Unaudited |
| TokenAuditVerify | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | 5 deployments: ethereum `0x66e7ce03cd45b41077814850b2c57e28142bdc91`; gnosis `0x52c4986c4dba182270ab205502c084d290150c81`; polygon `0x9c47ff97c56a9bc36ce2173412252a2b9dd51b15`; celo `0xce576fcf7a8e4b58c7953b53f97fde499e4f8907`; avalanche `0xbd8c57ead8c02468bd66cfdd7383714c59f341b9` | ⚠️ Unaudited |
| TokenDapp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82b9f1dcbf5e62d79ae22775a7657568e1403782` | ⚠️ Unaudited |
| TokenKYCVerify | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: gnosis `0x7fb80f769f7efe76fe47404eee455d98443e3df0`; polygon `0x04e21e0c4749e77ba69b290df61de965233cbf48`; celo `0x1265462f8dbbda17062c1b827cb85dc98b459b78`; avalanche `0xdad207858a982ee2486ca5f6a42648ec055b71fb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (339)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06d1020c8144bede4944f2e8cfca0f2573bf5de2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07d4ca25751fa0d5b32d0b9f3367c8c88e3e91ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a600cac9577161c7dd72ba89bfa3224500aa1fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x103aa33fadf480040fb0f17ac1f990d11a252682` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x104d2045b580d7d04e36eee018a1b9b4c0467c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x108c9df45bb391495d11b4023b81cf6a78bfe89e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x166aa0a9403c910daa7abc195e01fb33994bd72e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x186031c74f533bd7b70c2b2200c33cf423979d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ba00c14f9e8d1113028a14507f1394dc9310fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dcbc803ae6d4168b6cada28b6a103155c7d7fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x340db92e4e408d139a6a1f3777b6c01f7a99a365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x346c1193dfa084f4c9bc91d504c91eb32612ce3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e73f7efdd26ff9d71f927d6cb4860d09b923a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b170bb56032ca068ff0ee03943a9b9bc1554c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c71c82f48caf2f4db7e3fe4761cfc91828240b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ccbd3b2c8058ce2e998d1c32aa2f230ae8b77e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5223320616d59ede8b6e31174e3a051d100b7333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x581d180c8dfbc24959166b8a7e33d0480418cdd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58c38bf08bd023824abd05db9a4e4cab991e447c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a6d177687a55d1cd78433079ea003414efffcb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612ab50d239bfa00bbf9c69e95611b29415e9113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63d20bf9aa36b8be580b19b024dd8b62a9f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x694927471e2778396493a9ff25d0337b01eae99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f6fc17fd2936d5a60c2e5eeaef52042702fdc8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8876310333d5f927670422fd277df6d3e528ce34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x897e5404c71d3c4439fe306396da5c7914474436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d8fea31fa3de518f35a38f8554a90e5fc86e953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x916a8c33b784f6399ce8b7aff59d4aad29386b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa3b23355313d11d5c8ca0f1f7b5239e2bdaf2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa13baee00fc692b93a81f218eda3c1836d5cc2c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae84d03617b70d6fb3e5c1f6834d5341473686a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0bfd635d937d332310d9955f02303bde58395d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3d25242cdb6b1928e6f2c4ec65460cd273c096a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb62b4a45724b38bad93aa35907cc416fd5439753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7e516ef92fc7a3d2ce8505323d71d910c874f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae21d4247dd3818f720ab4210c095e84e980d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08f2001b833b1f03dc97f8a7376a24bafec40c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1d6ab056f23154f1ca870aed2e1bd0f954b6559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc68c522682614a9f1d336f756c0c0d71352925d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7065e692d2cacf7173c7bc08c6849eb9ef48b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3604bb1f2dee4b6de120b687656c556d4dab30b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3ceafa35e599dacec13cbe40005797048406c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9a4309a14ed7576daf865524960da4e96587280` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf17ac098fa81373625e102061844c02eccec645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe17ed50fb013d8dc9e9f59fa466228ca29e47548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe26b11d2e15b2f26818665244606ee70e0ce7ca7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe74083bafe69cd74519c6a40a3ad0723bd360bdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb3a9c56d963b971d320f889be2fb8b59853e449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed85dae67ff56335136beea446ad2aaf04b1ea6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1a510f896e105e5941cbe576c8c32d59ee7190a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf616fd33a84d6f13ca8e81f004d1e437b746346e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfcc9c5df19626413e0c2803f81762d5007d31cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20f44ebc8c8149f798658c15e6ab5598f47f5bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d045410f002a95efcee67759a92518fa3fce677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81e0ef68e103ee65002d3cf766240ed1c070334d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8655e5c4d701186d16765d1cdcef6d5287e4679a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9302402f3fa4d0b74622ea37e3696dc35cae5ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c55c9e02295b3e8c00501358e8289afc8b39edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd0d5efb535be20e8c67ad1fa547955c01129c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x0f358c2452b02efbc84bdb647a65c20f5fd47612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1265462f8dbbda17062c1b827cb85dc98b459b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x19641a259afaf9bc92ee02c2ba4c672a80b931b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1c8ab27b538b5e43c151460cbc6d271cb9eee4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x21356bbf82c71d7eac11e246574a521b2ebf7944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x2370d852871418a1a968c834a40e73c9c6f4b667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x274f23ba9d5541aebaa44351e74a0e71c4cf4a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x285c1fc1744d7b6172e3806f3174cb5121ca6f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x3052b62d39624f341d44b195d2e4b865f074b656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4b170bb56032ca068ff0ee03943a9b9bc1554c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4ee184b382273905b79a42db0c43094f9a951514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x63d20bf9aa36b8be580b19b024dd8b62a9f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x67491cfbbd29deaa1a05f952bc069cdaa5919711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x6fcc2e4efb4e05ddfc2154abe209356d5a687666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x77d054b8e61a141ce51fc9cc3e9e2c3b79f57809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x7ebf0deb916cc4cc54859b528617f6be8dc669ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9771096058ad666122412543e6477c3b3477cf42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x9aba45c07c98db2c87bf481a99a2af23b058f755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xa49cb6f7d153f68f118bc123391b4e1681881985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xadc5cac1e3cd46fe8d5b98db4ea6ee241a19dcee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xadc6e0110de650fcacc600faa30d1141d846474c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xb525de4d81c1e8cf74c578e1238f8f377b60032d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc1e3f48e23d899a326c31df6a2850457f50710f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc20c3bf45977e40adf8d0877441ee2497849e29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xc7065e692d2cacf7173c7bc08c6849eb9ef48b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xceb9e1b5373be1622d44e2da949c935f05a5be25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd49aa5511ac654e67915a4a229cce87866e983cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xd960f768a09909fd9082380ebd37b9f2e7717847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xdf17ac098fa81373625e102061844c02eccec645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe17ed50fb013d8dc9e9f59fa466228ca29e47548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe561438e089fb177ed6eb014c695c3428b167f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe839d166f01c256c0da9247dc8cebc128d9c7d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xea8d06f70e1a5bd1bf6ce927e62c8e370f5aafc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeb920a720eeffe1fe761ceb1e2dea1a5b37ed225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xeb9421aeebc963bb38ca754882fe9b403f93cb52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x020b4f43bd0fb82cfe9427f81e0e5fcce433f3f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x036063706396ad5dc49241451e955fbe05899cde` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03e466da02c91fb3cdc36385fb8f8afc04a769d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04c84c36e70dcf4154b6cfbf3be196f3e4ae51ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05c8ea22903689aa2526506000632d61edaa22fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b1ac04be6c5031493dee33ff1b9e048a6c0d8cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f358c2452b02efbc84bdb647a65c20f5fd47612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10f485b855be8e7d377fbe60e5d5676d88817b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1265462f8dbbda17062c1b827cb85dc98b459b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13455dee5199691f11ffbb4aaf59af56f23b95ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c8ab27b538b5e43c151460cbc6d271cb9eee4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cbe3d3cf16c3effb6102efaf57b56d9e6ddba8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e2e19e1b485151edd840af297374c5ebfcf860c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20f44ebc8c8149f798658c15e6ab5598f47f5bbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x22365ea3ea985b4218f5bb63e925125b07963656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x227547d8cbc2a281086b03cf0e3d9a3507425445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x227dd61a303aabbe2b9823ae6d380a6e43008a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2370d852871418a1a968c834a40e73c9c6f4b667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23eead2673407be2af6b6de568f47fa3716f31ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2481d4181bc76f819cb2357da4fee15183b71a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x274f23ba9d5541aebaa44351e74a0e71c4cf4a8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2cc420eca716a2f252f92769a5fb8832eb6f156c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d045410f002a95efcee67759a92518fa3fce677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37bc23fb5c83d73f208a77ecec7eb818cea60172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x387488e66483138b894d89d5d9184e629b555825` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x410950ffd14213fd3c95a0eff4e37b6e5c9365da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4aa0ad3cda95ecd193d0821fff066928c788aa25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b170bb56032ca068ff0ee03943a9b9bc1554c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bf72a0d761bc31dca243ca5ee572dedf34e3604` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c022cb5144c2b76402a5b5c64836f9c4803305f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4cf8ec740c0551afb979be1a98bae939432f0f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x56bef6a9555f37d6bea6e06c0b2b4820b5ef332d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d206c04a44a99db09d5b1af277d2b3ba98bfbe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d764143aa6b98d7ad915c9b86b9dfec778768f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5de19119c63cb838e017e0fb9eff2f733a9f8e5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63d20bf9aa36b8be580b19b024dd8b62a9f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x656f4fa9907b7ccabfea0f09a2e5169cba15cdd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6805d137279bbf3556bbd906848296ccc363d48f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6b0dedace3bedb974935f33871d5f855ebcb0a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e3ef0954bf0bd0884a68c871500e8d94b2eef10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7163df5c2a7d28f067b71a0505372e55f51e7358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77d054b8e61a141ce51fc9cc3e9e2c3b79f57809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ab684a4889391edba5490b3eb8b92cf4199fd03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ac0e923de04dbdaf9fa4fe7b451971efec322ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ebf0deb916cc4cc54859b528617f6be8dc669ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80628be752b5799d18450840a6dff5bbecd715b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8144b15cd02023304de186e6ffa5d88a8b639011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82b9f1dcbf5e62d79ae22775a7657568e1403782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88374152d344bec30250a1cf2265865ad52f4eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9302402f3fa4d0b74622ea37e3696dc35cae5ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x930abd414ad98bb6d896b570dc560401c7cff1d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c55c9e02295b3e8c00501358e8289afc8b39edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa13baee00fc692b93a81f218eda3c1836d5cc2c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa177203128495b7fb8a3dcb10bce35715ce5fae9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadc5cac1e3cd46fe8d5b98db4ea6ee241a19dcee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadc6e0110de650fcacc600faa30d1141d846474c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3e70e4c1e23cf0832ac281c45ee176d6478bed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb41184d2b62ed5c8c9b943634776eb1d5743a012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb525de4d81c1e8cf74c578e1238f8f377b60032d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb534594d228f371f2e2b64f3453c72f392055638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5566a206a89bd9c004230e6f6ac7335c77043cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb917fef21d435c4aae98b154df2111f5a5bceee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb965bae863f7edc462c5064d41fe077493bbfe95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd0d5efb535be20e8c67ad1fa547955c01129c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd30ce307069659600826f06f8f44272a52454d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd8c57ead8c02468bd66cfdd7383714c59f341b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbdce790f1bc243abda9842d7cf619cf5db5a2931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf154559cda3af5e726d4e5cf2caddbc404a75d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc20c3bf45977e40adf8d0877441ee2497849e29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce576fcf7a8e4b58c7953b53f97fde499e4f8907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd37231b96ff0241c96960e9515a91d71a8e9ec69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd5f1593d585cbac2d5bcae2dbae4fc159375c6dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd66aec4c79060fdf27266bbb992e4d6a830545fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9786fcd5425fab86ecdb6ed225b06611244d606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe15ab3bc51caa5bbeeb79f6a47452aeaca4b5251` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1cd76606ff0e859d53acd5da502fa70d5c74ed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1e1ddae2803bb3b9a9b80b46f321126fde84b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1e5b745ef3e5e139ae094cbc730fc0fe8863463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe4e7604bac58de48795a6a0537a6c9d1ef355479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe561438e089fb177ed6eb014c695c3428b167f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe5bbf14fe93f42f4acf0bfc7a689fab4eee32001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe839d166f01c256c0da9247dc8cebc128d9c7d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea8d06f70e1a5bd1bf6ce927e62c8e370f5aafc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeb3a9c56d963b971d320f889be2fb8b59853e449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef8b07f4adbe84508963eba7a269af60d7ad2e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf388fafe0b7472c9ab25241e4dd957c08133246d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbcbd0dc41ee176bf67b20437667b5117c6adbc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd03c006a3628b90381904b50e7bc1eef7697015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4b7b8c1bde5d61597412f846ac79f2cb7c3c2752` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x51919a71e7c422b6d32706ef6f1636d894fbe751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x6e573d464416a81a9f82207f1dfd6a42e4b21066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x983b00a2c3d8925cedfc9f3eb5df1ae121ff6b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19641a259afaf9bc92ee02c2ba4c672a80b931b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c8ab27b538b5e43c151460cbc6d271cb9eee4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3052b62d39624f341d44b195d2e4b865f074b656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51f411d40641475576622c8fba77f1e917e96df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x594e880305d9f28b985c08fb577cccf7019db341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x603dd7a2316069d2777e19fdd529c885121d2b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x63d20bf9aa36b8be580b19b024dd8b62a9f11f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x761d0173920034a8da520b9c33fc159573dede25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cc70850f1f7beb7774a0fe06830378a02b079b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x832ccf861059cb352515e89cc54f1b13c6620d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9742523a180a422c685ae7bd94af663cc4c7d9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9aba45c07c98db2c87bf481a99a2af23b058f755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b7e14288fa224ba2e2e67b59e0f8f0420d46f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadc5cac1e3cd46fe8d5b98db4ea6ee241a19dcee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb525de4d81c1e8cf74c578e1238f8f377b60032d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8028013d8a98823b081d654003cbc191af417df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb937c8731d015c898ff1cb2c13dc32bf6c612dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb7da7dede9aab7aa62fb19c9c98c5efc489c915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdce790f1bc243abda9842d7cf619cf5db5a2931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf154559cda3af5e726d4e5cf2caddbc404a75d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc7065e692d2cacf7173c7bc08c6849eb9ef48b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd5fd649da9e0563bbbdd555ab6006dc9a596b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5f1593d585cbac2d5bcae2dbae4fc159375c6dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdb6e6d043447bed192a1a59a0bf4aac944bd225d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdf17ac098fa81373625e102061844c02eccec645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea8d06f70e1a5bd1bf6ce927e62c8e370f5aafc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeb9421aeebc963bb38ca754882fe9b403f93cb52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfcc9c5df19626413e0c2803f81762d5007d31cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1621062bc983304e60f572962e34139109570462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x19641a259afaf9bc92ee02c2ba4c672a80b931b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1c8ab27b538b5e43c151460cbc6d271cb9eee4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x285c1fc1744d7b6172e3806f3174cb5121ca6f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x335a1fc6140bd13e8b94568b53516a4db7af4db3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x3917ae2da199e2d029626308d557fba71f6d5e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4f92623e5ae37068eb03573d3efafeb518828a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x603dd7a2316069d2777e19fdd529c885121d2b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x67491cfbbd29deaa1a05f952bc069cdaa5919711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x6fcc2e4efb4e05ddfc2154abe209356d5a687666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7163df5c2a7d28f067b71a0505372e55f51e7358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7561e8c5df885a419d30cc4ed7ef4a6cad281259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x7ebf0deb916cc4cc54859b528617f6be8dc669ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x832ccf861059cb352515e89cc54f1b13c6620d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x83f73fa5b738a6435667e16035955ffcb198df39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa3482425a8dc3a9d19a094bf24943bc42856e1c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa3abeafa40ca4456c3fde2bad46d592515dae47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xa49cb6f7d153f68f118bc123391b4e1681881985` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb5566a206a89bd9c004230e6f6ac7335c77043cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xb937c8731d015c898ff1cb2c13dc32bf6c612dd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc1e3f48e23d899a326c31df6a2850457f50710f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc7065e692d2cacf7173c7bc08c6849eb9ef48b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xcd5fd649da9e0563bbbdd555ab6006dc9a596b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xceb9e1b5373be1622d44e2da949c935f05a5be25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xd5f1593d585cbac2d5bcae2dbae4fc159375c6dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xdf17ac098fa81373625e102061844c02eccec645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe17ed50fb013d8dc9e9f59fa466228ca29e47548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xe561438e089fb177ed6eb014c695c3428b167f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xeb920a720eeffe1fe761ceb1e2dea1a5b37ed225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xfafcea08f86a1864f5d7d49fd2a2b3186c9489c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03e466da02c91fb3cdc36385fb8f8afc04a769d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x049194026104d16208990a27b70f777cfbad6032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05a12ae670dd5ffeae46ce904b4dd1d2210a1ef8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05ab16380754ab40b1f7cf378e0186aa18e6d6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b400fea40c5439c7da6e09446bdc6cbddec45de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x104d2045b580d7d04e36eee018a1b9b4c0467c44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10f485b855be8e7d377fbe60e5d5676d88817b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x120c2b420d63ccd0f96b92f870c28e77a3ee3232` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1265462f8dbbda17062c1b827cb85dc98b459b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1301aaa8c8ef5394051eac1cd84618f7efd7083f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13455dee5199691f11ffbb4aaf59af56f23b95ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x136b81bef354cd4d713d83d5de593e33e2f38ade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19641a259afaf9bc92ee02c2ba4c672a80b931b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c8ab27b538b5e43c151460cbc6d271cb9eee4af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22365ea3ea985b4218f5bb63e925125b07963656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x23cba2055b107cd17f45bf3415cb80f6a04a0ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x253370fa7f53d3c4426c042740e94ffc2fcfca56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x285c1fc1744d7b6172e3806f3174cb5121ca6f5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28b85993ade7b77ff2f6250ff5ba9ddf5b20aa52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b246bc18fa02e06cdbf3d91c5c656ae0adad596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f095df486cf28ad6920b1728317a44301f918c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32a109ab5685007cf5e197434896cab03ccef8e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34650f366a2850faee105eea2b4c0ae4abb0fcf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37318667875d52740f398ebad200ed88456cb883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40e9a74dcda7ed08db9f167401a7b9208c092aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x42dbb08176cff42c63328e284e7733440d08696b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b170bb56032ca068ff0ee03943a9b9bc1554c9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ece5793352e457cc356db915f131f7725afe678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f92623e5ae37068eb03573d3efafeb518828a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5022091277684c0e08a1a305afc052ff28dbf299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x51f411d40641475576622c8fba77f1e917e96df4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52fe732e56c5441afb2db81764b8d2e184679fa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x55074e150bd2823dfab6e7bd7ccd41c71af2e0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x561564874f1f0c03740b798c52315faf391f8908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bd12cef0d33295198a4b68aa3b38a9d373de2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5c4f019b809f006c503a1348e02ee3ac4ed49ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d764143aa6b98d7ad915c9b86b9dfec778768f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5ee6b72a75040d32f4f431bb92d090771878d35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x603dd7a2316069d2777e19fdd529c885121d2b80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61bd6549e2766299c8186d8ae87f2b8bca65ff8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x63b3c5988a047f6cc700e0160b09b1427845c4e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69275e94cc431e380eebcbda6fb8e19f931cd359` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x694927471e2778396493a9ff25d0337b01eae99a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6cd69c6b05a9134e0caaadf1ef84334b19639b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6fb464be66de24fd6b30789f83a16be53f37b038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6fcc2e4efb4e05ddfc2154abe209356d5a687666` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6fdd287174016f2440d2df039c2a60e15cd7a35b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7163df5c2a7d28f067b71a0505372e55f51e7358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77d054b8e61a141ce51fc9cc3e9e2c3b79f57809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7cc70850f1f7beb7774a0fe06830378a02b079b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7ebf0deb916cc4cc54859b528617f6be8dc669ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7fb80f769f7efe76fe47404eee455d98443e3df0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8144b15cd02023304de186e6ffa5d88a8b639011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8510a7bbc9ef742e134a4ed2c00a92a86dc560dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x892340899a1682580bdfe01133eacfc9027e4d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8be139b9329e1ab8f9b34f290008d67b37fd2ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8cade7017ebc11b568eb0d8dc7d888cbebc5ed37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e6384b3951cde4dbe08e6fd81e5bc525ea73d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8fabffa36ea7da97efaf6ad234bcbd9a41dbf314` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x96ae40de076c76925a3464d304db4e7a7e3daaa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ddf208f9a8cd3d1421d01a3c8f1fb517c88b2d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9eac8a5dc8d1a32359843515d8ff85e0b7575493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1350c181965da0a9a4a8a9f3e3f4c9def850023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa267c3413b3eca9029241375d861b7b4c67111ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaa22e44e4004b12745b41bcfa38bc6c97468004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab6a25cc60f5f6793c72bbf957a2e501f1b43b7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadc5cac1e3cd46fe8d5b98db4ea6ee241a19dcee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb07440dbcc5b738396304bd9df51d53f09a4e341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3c0bc5d284c9f01a0d4c4eab8546d4d124612cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5566a206a89bd9c004230e6f6ac7335c77043cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb965bae863f7edc462c5064d41fe077493bbfe95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc7cac193d02632bddcdb788c8c1bfbcb0ef9381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5fe280422117461af9b953da413e9627e3b9a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7065e692d2cacf7173c7bc08c6849eb9ef48b38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcd5fd649da9e0563bbbdd555ab6006dc9a596b49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce576fcf7a8e4b58c7953b53f97fde499e4f8907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce63720d649d6783bdf4e57247e35a426dcc9ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xce653948c0fe8a65d8f9bd11309d5781c2af20f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd37231b96ff0241c96960e9515a91d71a8e9ec69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd46371ac377b07ddd04a4fedfb38d41e26f9417a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd66aec4c79060fdf27266bbb992e4d6a830545fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd8c2473340d7c52f59b16ba95e68b57faed50019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda1292e583c4070bd972b6a01ca2e33132ea5f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xda42e906beb62a5ee4b1807344da8361f0fbb052` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf17ac098fa81373625e102061844c02eccec645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe17ed50fb013d8dc9e9f59fa466228ca29e47548` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeb9697f95b2922dd50e465c64b4555d15b07359d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xec67222dce75559c6ed8cb54ce01c5e290d19128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xece4ee2f65eb2303db399f505dea3acadb523d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed85dae67ff56335136beea446ad2aaf04b1ea6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfafcea08f86a1864f5d7d49fd2a2b3186c9489c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfcaa4daa6168882ac072aec6478ea334e0bb95f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfcc9c5df19626413e0c2803f81762d5007d31cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfec757f7bebc7e470bd7318ee3489c90636d9e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | harmony | n/a | 14 deployments: fantom `0x1c8ab27b538b5e43c151460cbc6d271cb9eee4af`; fantom `0x318aa10323bb8ddd163adb61f0c54cfa85b4132e`; fantom `0x650fe4f419d6ee86cdd1c9b3cdb26c48a6c02623`; fantom `0x832ccf861059cb352515e89cc54f1b13c6620d37`; fantom `0xb1f73ee9f0629f13807e291220e85f3b76215f35`; fantom `0xb5566a206a89bd9c004230e6f6ac7335c77043cd`; fantom `0xbb7befe4c643fb37697a6f2b50dee01bd99f907b`; fantom `0xc1e3f48e23d899a326c31df6a2850457f50710f8`; fantom `0xe4d7b863ce888df437c5727a757fdd68d69b3e3c`; harmony `0x13455dee5199691f11ffbb4aaf59af56f23b95ae`; harmony `0x4b170bb56032ca068ff0ee03943a9b9bc1554c9a`; harmony `0xadc5cac1e3cd46fe8d5b98db4ea6ee241a19dcee`; harmony `0xb3c0bc5d284c9f01a0d4c4eab8546d4d124612cd`; harmony `0xd5f1593d585cbac2d5bcae2dbae4fc159375c6dd` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 359
- Live contracts: 0
- Unknown liveness contracts: 359
- Source-verified contracts: 40
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=24, contamination review=3, source verified unclassified=13, unverified unclassified=319

Showing first 200 of 359 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | DxFire<br>`0x830cdef017761cc1db7214a4dd86f357ce789db7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0x10f485b855be8e7d377fbe60e5d5676d88817b95` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0x51f411d40641475576622c8fba77f1e917e96df4` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0xaad287488c178f7fd663cf4f2c106da84fbbfeb4` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | TokenAuditVerify<br>`0x66e7ce03cd45b41077814850b2c57e28142bdc91` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0x3917ae2da199e2d029626308d557fba71f6d5e73` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0x554d523a54471f12dde2152a7f33e159404d199e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0x857b52443bfb1af458e08f55886185cb128b401e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0xdb6e6d043447bed192a1a59a0bf4aac944bd225d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | CUSTOMTOKENDAPP<br>`0xa3abeafa40ca4456c3fde2bad46d592515dae47b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | DxLockLPDep<br>`0x6fcc2e4efb4e05ddfc2154abe209356d5a687666` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0x335a1fc6140bd13e8b94568b53516a4db7af4db3` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0x554d523a54471f12dde2152a7f33e159404d199e` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0xb937c8731d015c898ff1cb2c13dc32bf6c612dd4` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | PresaleOwnerFinalize<br>`0xdb6e6d043447bed192a1a59a0bf4aac944bd225d` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | StandardGenerator<br>`0xed85dae67ff56335136beea446ad2aaf04b1ea6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | TokenAuditVerify<br>`0x9c47ff97c56a9bc36ce2173412252a2b9dd51b15` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | TokenKYCVerify<br>`0x04e21e0c4749e77ba69b290df61de965233cbf48` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | DxFire<br>`0xf8f9292007a977e2275152d1947fc477d030f843` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | RouterDeployer<br>`0xa5da59f5126ee48ffd44e184c489ef8b2e7cd7f9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | RouterDeployer<br>`0xef8b07f4adbe84508963eba7a269af60d7ad2e25` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | RouterInterface<br>`0xd5071536d1a2aff6db130917b4c1fa7b8daf47ff` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | TokenAuditVerify<br>`0xbd8c57ead8c02468bd66cfdd7383714c59f341b9` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| candidate review | TokenKYCVerify<br>`0xdad207858a982ee2486ca5f6a42648ec055b71fb` | non_address_book | unknown | unknown | verified | review: missing_fingerprint | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| contamination review | TokenAuditVerify<br>`0x52c4986c4dba182270ab205502c084d290150c81` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| contamination review | hashFinder<br>`0x2ff131d69698e56f073ec60ef00274ebe216d20c` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| contamination review | DxFire<br>`0x615c9ec24f2595528fe003782f6c706de0960098` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | BasicToken<br>`0x8acf43c8255918041e2b40995e614451ee78b184` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | TokenDapp<br>`0x82b9f1dcbf5e62d79ae22775a7657568e1403782` | non_address_book | unknown | unknown | verified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| source verified unclassified | CUSTOMTOKENDAPP<br>`0xa3abeafa40ca4456c3fde2bad46d592515dae47b` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | DxFire<br>`0xfbcbd0dc41ee176bf67b20437667b5117c6adbc5` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | DxLockLPDep<br>`0x832ccf861059cb352515e89cc54f1b13c6620d37` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | StandardGenerator<br>`0xfcc9c5df19626413e0c2803f81762d5007d31cab` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | TokenKYCVerify<br>`0x7fb80f769f7efe76fe47404eee455d98443e3df0` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | TestTimToken<br>`0xfc40767d0ae11c7f08e156b59fa2e54bba2ce378` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | TokenAuditVerify<br>`0xce576fcf7a8e4b58c7953b53f97fde499e4f8907` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | TokenKYCVerify<br>`0x1265462f8dbbda17062c1b827cb85dc98b459b78` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | DxCustomDividendToken<br>`0x2f1b52419009f8ab9c934ba559897904dd6b0284` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | DxNativeDividendToken<br>`0x4bf72a0d761bc31dca243ca5ee572dedf34e3604` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| source verified unclassified | DxNativeDividendToken<br>`0xe1cd76606ff0e859d53acd5da502fa70d5c74ed5` | non_address_book | unknown | unknown | verified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x06d1020c8144bede4944f2e8cfca0f2573bf5de2` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x07d4ca25751fa0d5b32d0b9f3367c8c88e3e91ea` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x0a600cac9577161c7dd72ba89bfa3224500aa1fc` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x103aa33fadf480040fb0f17ac1f990d11a252682` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x104d2045b580d7d04e36eee018a1b9b4c0467c44` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x166aa0a9403c910daa7abc195e01fb33994bd72e` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x186031c74f533bd7b70c2b2200c33cf423979d0d` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x1dcbc803ae6d4168b6cada28b6a103155c7d7fc4` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x340db92e4e408d139a6a1f3777b6c01f7a99a365` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x346c1193dfa084f4c9bc91d504c91eb32612ce3f` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x38e73f7efdd26ff9d71f927d6cb4860d09b923a1` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x4b170bb56032ca068ff0ee03943a9b9bc1554c9a` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x4c71c82f48caf2f4db7e3fe4761cfc91828240b8` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x4ccbd3b2c8058ce2e998d1c32aa2f230ae8b77e2` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x5223320616d59ede8b6e31174e3a051d100b7333` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x581d180c8dfbc24959166b8a7e33d0480418cdd6` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x58c38bf08bd023824abd05db9a4e4cab991e447c` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x5a6d177687a55d1cd78433079ea003414efffcb1` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x612ab50d239bfa00bbf9c69e95611b29415e9113` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x63d20bf9aa36b8be580b19b024dd8b62a9f11f3b` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x694927471e2778396493a9ff25d0337b01eae99a` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x6f6fc17fd2936d5a60c2e5eeaef52042702fdc8d` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x8876310333d5f927670422fd277df6d3e528ce34` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x897e5404c71d3c4439fe306396da5c7914474436` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x8d8fea31fa3de518f35a38f8554a90e5fc86e953` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x916a8c33b784f6399ce8b7aff59d4aad29386b8e` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x9aa3b23355313d11d5c8ca0f1f7b5239e2bdaf2e` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xa13baee00fc692b93a81f218eda3c1836d5cc2c0` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xae84d03617b70d6fb3e5c1f6834d5341473686a5` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb0bfd635d937d332310d9955f02303bde58395d5` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0xb3d25242cdb6b1928e6f2c4ec65460cd273c096a` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb62b4a45724b38bad93aa35907cc416fd5439753` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb7e516ef92fc7a3d2ce8505323d71d910c874f38` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xc08f2001b833b1f03dc97f8a7376a24bafec40c7` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xc1d6ab056f23154f1ca870aed2e1bd0f954b6559` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xc68c522682614a9f1d336f756c0c0d71352925d3` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xc7065e692d2cacf7173c7bc08c6849eb9ef48b38` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xd3604bb1f2dee4b6de120b687656c556d4dab30b` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xd3ceafa35e599dacec13cbe40005797048406c80` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xd9a4309a14ed7576daf865524960da4e96587280` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xdf17ac098fa81373625e102061844c02eccec645` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xe17ed50fb013d8dc9e9f59fa466228ca29e47548` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xe26b11d2e15b2f26818665244606ee70e0ce7ca7` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0xe74083bafe69cd74519c6a40a3ad0723bd360bdd` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xeb3a9c56d963b971d320f889be2fb8b59853e449` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0xed85dae67ff56335136beea446ad2aaf04b1ea6c` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xf1a510f896e105e5941cbe576c8c32d59ee7190a` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xf616fd33a84d6f13ca8e81f004d1e437b746346e` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xfcc9c5df19626413e0c2803f81762d5007d31cab` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x20f44ebc8c8149f798658c15e6ab5598f47f5bbc` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x9302402f3fa4d0b74622ea37e3696dc35cae5ad5` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x9c55c9e02295b3e8c00501358e8289afc8b39edf` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0xbd0d5efb535be20e8c67ad1fa547955c01129c67` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x1265462f8dbbda17062c1b827cb85dc98b459b78` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x19641a259afaf9bc92ee02c2ba4c672a80b931b6` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x1c8ab27b538b5e43c151460cbc6d271cb9eee4af` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x21356bbf82c71d7eac11e246574a521b2ebf7944` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x2370d852871418a1a968c834a40e73c9c6f4b667` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x274f23ba9d5541aebaa44351e74a0e71c4cf4a8f` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x285c1fc1744d7b6172e3806f3174cb5121ca6f5f` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x3052b62d39624f341d44b195d2e4b865f074b656` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x4b170bb56032ca068ff0ee03943a9b9bc1554c9a` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x4ee184b382273905b79a42db0c43094f9a951514` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x63d20bf9aa36b8be580b19b024dd8b62a9f11f3b` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x67491cfbbd29deaa1a05f952bc069cdaa5919711` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x6fcc2e4efb4e05ddfc2154abe209356d5a687666` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x77d054b8e61a141ce51fc9cc3e9e2c3b79f57809` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x7ebf0deb916cc4cc54859b528617f6be8dc669ba` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x9771096058ad666122412543e6477c3b3477cf42` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x9aba45c07c98db2c87bf481a99a2af23b058f755` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xa49cb6f7d153f68f118bc123391b4e1681881985` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xadc5cac1e3cd46fe8d5b98db4ea6ee241a19dcee` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xadc6e0110de650fcacc600faa30d1141d846474c` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb525de4d81c1e8cf74c578e1238f8f377b60032d` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xc1e3f48e23d899a326c31df6a2850457f50710f8` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xc20c3bf45977e40adf8d0877441ee2497849e29a` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xc7065e692d2cacf7173c7bc08c6849eb9ef48b38` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xceb9e1b5373be1622d44e2da949c935f05a5be25` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xd49aa5511ac654e67915a4a229cce87866e983cb` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xd960f768a09909fd9082380ebd37b9f2e7717847` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xdf17ac098fa81373625e102061844c02eccec645` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xe17ed50fb013d8dc9e9f59fa466228ca29e47548` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xe561438e089fb177ed6eb014c695c3428b167f2c` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xe839d166f01c256c0da9247dc8cebc128d9c7d9f` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xea8d06f70e1a5bd1bf6ce927e62c8e370f5aafc1` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xeb920a720eeffe1fe761ceb1e2dea1a5b37ed225` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xeb9421aeebc963bb38ca754882fe9b403f93cb52` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x020b4f43bd0fb82cfe9427f81e0e5fcce433f3f5` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x036063706396ad5dc49241451e955fbe05899cde` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x03e466da02c91fb3cdc36385fb8f8afc04a769d5` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x04c84c36e70dcf4154b6cfbf3be196f3e4ae51ba` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x05c8ea22903689aa2526506000632d61edaa22fb` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x0b1ac04be6c5031493dee33ff1b9e048a6c0d8cc` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x0f358c2452b02efbc84bdb647a65c20f5fd47612` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x10f485b855be8e7d377fbe60e5d5676d88817b95` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x1265462f8dbbda17062c1b827cb85dc98b459b78` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x13455dee5199691f11ffbb4aaf59af56f23b95ae` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x1c8ab27b538b5e43c151460cbc6d271cb9eee4af` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x1cbe3d3cf16c3effb6102efaf57b56d9e6ddba8b` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x1e2e19e1b485151edd840af297374c5ebfcf860c` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x20f44ebc8c8149f798658c15e6ab5598f47f5bbc` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x22365ea3ea985b4218f5bb63e925125b07963656` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x227547d8cbc2a281086b03cf0e3d9a3507425445` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x227dd61a303aabbe2b9823ae6d380a6e43008a6f` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x2370d852871418a1a968c834a40e73c9c6f4b667` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x23eead2673407be2af6b6de568f47fa3716f31ed` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x2481d4181bc76f819cb2357da4fee15183b71a82` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x274f23ba9d5541aebaa44351e74a0e71c4cf4a8f` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x2cc420eca716a2f252f92769a5fb8832eb6f156c` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x37bc23fb5c83d73f208a77ecec7eb818cea60172` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x387488e66483138b894d89d5d9184e629b555825` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x410950ffd14213fd3c95a0eff4e37b6e5c9365da` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x4aa0ad3cda95ecd193d0821fff066928c788aa25` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x4b170bb56032ca068ff0ee03943a9b9bc1554c9a` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x4bf72a0d761bc31dca243ca5ee572dedf34e3604` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x4c022cb5144c2b76402a5b5c64836f9c4803305f` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x4cf8ec740c0551afb979be1a98bae939432f0f14` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x56bef6a9555f37d6bea6e06c0b2b4820b5ef332d` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x5d206c04a44a99db09d5b1af277d2b3ba98bfbe5` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x5d764143aa6b98d7ad915c9b86b9dfec778768f6` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x5de19119c63cb838e017e0fb9eff2f733a9f8e5c` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x63d20bf9aa36b8be580b19b024dd8b62a9f11f3b` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x656f4fa9907b7ccabfea0f09a2e5169cba15cdd0` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x6805d137279bbf3556bbd906848296ccc363d48f` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x6b0dedace3bedb974935f33871d5f855ebcb0a2e` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x6e3ef0954bf0bd0884a68c871500e8d94b2eef10` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x7163df5c2a7d28f067b71a0505372e55f51e7358` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x77d054b8e61a141ce51fc9cc3e9e2c3b79f57809` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x7ab684a4889391edba5490b3eb8b92cf4199fd03` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x7ac0e923de04dbdaf9fa4fe7b451971efec322ea` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x7ebf0deb916cc4cc54859b528617f6be8dc669ba` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x80628be752b5799d18450840a6dff5bbecd715b2` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x8144b15cd02023304de186e6ffa5d88a8b639011` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x82b9f1dcbf5e62d79ae22775a7657568e1403782` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x88374152d344bec30250a1cf2265865ad52f4eb0` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x9302402f3fa4d0b74622ea37e3696dc35cae5ad5` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0x930abd414ad98bb6d896b570dc560401c7cff1d2` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0x9c55c9e02295b3e8c00501358e8289afc8b39edf` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0xa13baee00fc692b93a81f218eda3c1836d5cc2c0` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xadc5cac1e3cd46fe8d5b98db4ea6ee241a19dcee` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xadc6e0110de650fcacc600faa30d1141d846474c` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb3e70e4c1e23cf0832ac281c45ee176d6478bed5` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb41184d2b62ed5c8c9b943634776eb1d5743a012` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb525de4d81c1e8cf74c578e1238f8f377b60032d` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb534594d228f371f2e2b64f3453c72f392055638` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb5566a206a89bd9c004230e6f6ac7335c77043cd` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb917fef21d435c4aae98b154df2111f5a5bceee9` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xb965bae863f7edc462c5064d41fe077493bbfe95` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xbd0d5efb535be20e8c67ad1fa547955c01129c67` | non_address_book | unknown | unknown | unverified | n/a | `0x06842629170d420a1f29a2bd8271ae7d8c3e860b` |
| unverified unclassified | UnnamedContract<br>`0xbd30ce307069659600826f06f8f44272a52454d7` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xbd8c57ead8c02468bd66cfdd7383714c59f341b9` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xbdce790f1bc243abda9842d7cf619cf5db5a2931` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xbf154559cda3af5e726d4e5cf2caddbc404a75d1` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xc20c3bf45977e40adf8d0877441ee2497849e29a` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xce576fcf7a8e4b58c7953b53f97fde499e4f8907` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xd37231b96ff0241c96960e9515a91d71a8e9ec69` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xd5f1593d585cbac2d5bcae2dbae4fc159375c6dd` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xd66aec4c79060fdf27266bbb992e4d6a830545fe` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xd9786fcd5425fab86ecdb6ed225b06611244d606` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |
| unverified unclassified | UnnamedContract<br>`0xe15ab3bc51caa5bbeeb79f6a47452aeaca4b5251` | non_address_book | unknown | unknown | unverified | n/a | `0x47bacf935066b802eaa0067ec14ab035b24eb78b` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/dxsale](https://skynet.certik.com/projects/dxsale) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11578] skynet.certik.com/projects/dxsale — no match: The provided text is a project overview page from CertiK Skynet, not an audit report. It contains no scope section, contract listings, or audit findings. The only date mentioned is '8/18/2022' as the audit delivery date, but no contracts are listed.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 339 |

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

- [11578] skynet.certik.com/projects/dxsale

Fork inheritance lineage and inherited audits are included when available.
