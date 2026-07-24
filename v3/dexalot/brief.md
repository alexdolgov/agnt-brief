# Agentic Audit Brief: Dexalot

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Dexalot (`dexalot`)
- Website: [https://app.dexalot.com/](https://app.dexalot.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, avalanche-fuji, base, bsc, ethereum
- Contract surface: 425 unique implementations (429 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $8,063,794.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Dexalot. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across avalanche, avalanche-fuji, bsc. Structural roles: 6 unclassified, 2 supporting, 1 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: unclassified (6), supporting (2), core (1)
- Contract kinds: contract (8), abstract (1)
- Detected standards: erc1967proxy (2), ownable (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 3

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 9; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 22 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 403 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/16
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 409
- Unique implementations: 425
- Raw deployments: 429
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 1 unknown
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
| DexalotToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x093783055f9047c2bff99c4e414501f8a147bc69` | ⚠️ Unaudited |
| Exchange | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x16863a1052362012352f07ff3cd23088414c67e5`; avalanche `0x4dc10a62a904bb7b2acd3b99596895ce0681a09a` | ⚠️ Unaudited |
| Exchange | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235254 | `0x80768783d18ad5c9de46d2cde398fb0c193d5885` | ⚠️ Unaudited |
| MainnetRFQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a371cd8e9ee8cfc3efbd7ef13ab40779eceb2dd` | ⚠️ Unaudited |
| OrderBooks | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235259 | `0x3ece76f7add934fb8a35c9c371c4d545e299669a` | ⚠️ Unaudited |
| OrderBooks | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235255 | `0x9cf797df135aa671e97d1b713cdaeea9fca9170e` | ⚠️ Unaudited |
| OrderBooks | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0xcb1556a61d047523bce9da9f79939faed62c9d19`; avalanche `0xd95bcc48579a759919201c8f48359d361c50584e` | ⚠️ Unaudited |
| Portfolio | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x176e82bf0d30ec55ae3ef98e4be3922931cb4ef2`; avalanche `0x43de3a895626730c86120873952375e8269cab1a` | ⚠️ Unaudited |
| Portfolio | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235258 | `0x6f8205cf222dd4c6615991c7f604f366526b5c6e` | ⚠️ Unaudited |
| Portfolio | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235257 | `0xac0f301b3f7e1d48553535089bb2c201760de0d4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235256 | `0x9faa0a5dcbc0cbc81719ba6f0f1726a8baae16f2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb34f9c897edba026efc29a77c2f575e607402644` | ⚠️ Unaudited |
| TradePairs | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x16d8a7e5300acaba43418a6e2c68e159c9097bdd`; avalanche `0x2c0e189edfb3572ac67063bad7def6739109df10` | ⚠️ Unaudited |
| TradePairs | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-235253 | `0x625b7d76f69095907fc3b467c0c3be07d1987ba1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235261 | `0x12e2b3236d338651f7ee2222e9756b4222694323` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | avalanche | unit-235260 | `0x1d34b421a5ede3e300d3b8bcf3be5c6f45971e20` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (409)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x001ddd77728b7cb25013e99e51f62959921077de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0038e287f7e3a26f7a6ed33d72b299e62d36706f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0089c051c061dfd36133ac499f5b21abe9274399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x00a95bfc4e0691bf5d32c521c78bc53eac70a84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x01d0260f06cbcfed69ae94b48e9a92070055710c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0261a12687e72cc25e4b9f259e92af30e873b1a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x02cc6ce3de62cbbbd2fbdc6abde6d7a0fe01b2a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0360c844d52b171e9550f10448772241ff40287e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0436786a124761b26745a382ebdb59ef9fcb61aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0542dcfccb1d5b4fa2227293571301dc8c506bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x05ca10d98a1afcd514394c7b4413cab4a3d6b792` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x07610bd8f0a3b2c6b4a49de373b5f8119a117895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x078126a917dbd76edb31b5b7f8e1e735946ece3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x07eeb216a9f79c87304530fed5f5b4a4b544a987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0897562399a86b0692030ef1b91547e7b9b3e398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x08ea895345d4545f2c9fc0fb3cbb51845b77f560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x09734610e2a9623dab23ec1d2be4409d941ff4c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0a6c8ecf700f963a3df17a6c96bb7648fec668d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0b0a7c1f6bd2024d930c9ba5be1ed44d93e5724f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0bd60503d621dca23920428fb057f6f3d3c67518` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0bdbf6166499f90acc0c23e6cd92f6bc1c582aef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0c743b4189d7ce0e3c601a9d0b08251d57e12ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0dcdfe57d02e767cf0566844788f0db528e95ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x0fb11c3d0a459144ff445672b325eb4649a6ba58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x100a006a3bbcad71b0ad9897c89f7b7cbb76434f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x10f6adf949bd7d65794f3ed26b9844633ed2f2bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x116b47172d07af15f6dc6b95f75f92b51451cffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x122553b059fcc96d5ac05b364f0aa4ded802cb14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x123b9714a78f7c857b5b6e3cb8b0d706d5488a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x12d7bf5e25b05e52c4472937368961b5c4ff9a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x13861f18c1037b3c6e24746823bf712a82ea8e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x13f9d2bed930fe8aef23f898b3411834d90aac93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x16534d3ce189baf69243cdcd8268db3c3a52d96a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x179c608155a246b3e0264066db82364dea0c2429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x17c8f10b25b30b64112bc3615df39f50bcdec7ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x194fbd5eda29b540b9c3615fac40ab53b2fe766e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x19b399f7fc510366015ed56ae17673d10c1c9d14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1a195e35fb8128dd40bde2e25e9e2d26657733f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1a3ab918ed5e0a03fa034b4a3a3a4b5f4a2d8c68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1a7916704339ba206f122cd637a568dad20b4f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1c5701186306f14a33d6255cdbf90b17a3b92bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1c5980ca66e9f0cbbd18d279f521a81b9a6437e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1c6445c87497c951084027f77ac6634d783d9980` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x1e69e82a661a0a333b0d53859cb0f01922accf41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x20230f1fb0c925aa47277452c95b587d5b03b012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x209b5484898713ae63434c2456cc997fcc41187d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x21e0c0d7e1f79557e5d3c4c943a58a2e2f4dd848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x223ed161c1f08396a0ac0f4c2db2087898377c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x22bc41439805ad9ad3a77664c5094dadbdcd824d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2326546463a8ba834378920f78bce8b36872e7ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x238de2847ded095d47b71b103d25c484fb42f3c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x239266b1dfad9fa428216d444b5dfbb671b9485f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x247535509ff31d282ffa98d1a9456c92d9c99c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x24984b76703b466404f6da2518bef8a313433391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x24db5d222a2eb9b055d00b65342b7cfee75f95d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x252ff3c4a5c595d157209e72ccaeaf16ef2d766c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2871d6489ff3728b7125551b80bbc401a2f88c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x289c479dbaebb86bd2a3f5cd9fbffc08532c4d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x28b01283d328f53a2df5d02feab3d0b8cdbd1f00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x28d16a6397dfbd6aac4b0b4af57d3cf8132696e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2919351244076ce2aeb583defa05dc84ffbaae80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x29a775819cd927a963588058617db0602cf6ea8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2b7fc352654424b6919dc3cc44ad648e50dfbd6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2caa4a0a2b58285852e12571eaa62872a8922b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2cf4beb6cd2ce0f8b164f058a83dd08705c82eb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2d121b84e8e881062b5108d55e3ea28630ac08a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2d7715b777d2a8326efac845fc439a9d7d0a4629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2dd7d4fd351669600e6e2cd02a83b9b438f3117c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2ed84a1fe0be49269047373859a16ec1ab8c6de5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x2f291e5e3a179fc9b71065d2ba7ea77fad8df6ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x309f4ebe86c5a28c1f2c7caaf5836934d281b582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x30b0b0b1550f6a2de3ddd4276c8bb12880b33af9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x30bd7afb4d7f1a98849200a6db26531620ef1bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x318a43ad5b7b821795b5f4ab13ba197b9ee82231` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3334f8c59ef94025f87c8faf0b5bcf7ca1861d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x353ace0dcb5ff9bcd7545570acf6f98e4fda7ba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x35f16bd993383265244b786edd4891e0f2104c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3612389eeb2533fc5945bc4f88fe198105f04a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x36b8c532d6f5229010594de5e2fb714015e0e5f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x36bc8453b9c4f57d76e5912f0b18465652ad218d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x36bf87c912a8bb04dd79a5c2752f27fd020e2680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x36c60f4088f758c0e81d9d80e0c0c7d520c70e60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x37c9ca3f8bee865933e886dc2dcfee943f1b12d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x39a1c8ac3d49dfe643ba33ccb20b32ee37a88898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3a89f1ef8f7d466c53f942a46468fea542c448a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3b4ca1ea12ddfd41cb68780a94ecf8a74eddd15a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3bc3da2a1bb3880c3fee8b2c13e8368afa9c4f4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3c84b18a6ca406cb608ce022e785002d3d76eacd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3d67bfee2e0bfd8c742ec4ba2eee7b61599b2db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3d72edd28bec6ae6a1c5d15cad152203f4f546bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x3e514b74a10aa51c2ca5aa96d5afad1276cf7cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x40ea649b3eea68a5bdfc7d2bfde21ed88ba807cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x420a57dd227039eb67fc24481cf9821ff69f851d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x42ef8b7d097b2a2c97349fc36655054d387d8687` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x435e3f0e2309f725ecb5c3325ed653cf9c4bcd49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x43ddd25b283869073acf5c98d6fb9a364c0bf712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x44968f55cfca8fcf4622448cf2ac659933ccf708` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x44c40a26a749c6935d79ae65d987a003f876fc8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x45307b2783036541288d3a884789f2c8eb205c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x459843595d0fbcfbcd0530c12b83fcc424cbdf51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x45c1c670346ec645a4528bf23ef83b6e9c0e42dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x45d88f2781d521742d4a79382573e68319373c71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x47f208a958ed276fee9a85bf1d3c6e9c0c01b5c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x47f711e7eb01380c9eab4784f6f5b4bba36048a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4847fa92aa48234e6e705b5876ee0d2beee7d993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x48e07f5e32db5d237265ff40c7798439bdaabba6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4a5ae1c25e74263f384da4bd076964ca4ed763c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4a741abfcac357fbafee2d4886414af2321c8cff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4aa012ba36dde70694ee5580e775dfa7c4264372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4bcbf93be36058d4d9d997ff394c92d105d77d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4c1b0c8721a49351dbb559b2d017ab0ce47280b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4cb24437aa406dc5f77ef9237c9422439e9de324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4cb9611a985a95c756f5aabb0e11c7ac7d9fb76a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4cc025a30da14b4a9cea04611f2867e81975ce58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4d6c6f92b8e82b3b4bcbebb6cb6fbcc094994d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4d9e0b74d10b253b5d2135d4f91940a29678d54b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4e54e20d9607ec752b67136b31c681a06626ad79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4ee02fd03f2c4dfb42c9cb75247865a34b689479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4f412d2458eaaada9c9570eaacc08364631dc5c9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x4f605a43571b3d392933a716db1599241732a5fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x50889adf5b7478c0b8c0364121dad425f8accfc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x513e7fe83297a3493250ed1543c378eda8abbac5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5174a5f5d7caf6a6116af14272d121678c3fbbd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x51e107aeecc9167933fa31e7bbb9e68c883769a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x536fc8da8328405263248988a4aadb701437268e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x54661202f9bf35660e2eb84f1cd0f37639059c8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x549047339ca060d8b6badd9c1610a88ed0eb7f5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x558037fde9e490a680bc395d0a8192aad26afaeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x55b79e1eec73df7e39173b68d629e24fd91c9bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5653f9b775495a93be1073420f32091f31ad14e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x568d66ef05fb9d46b681ef9462468fb57558dcb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x56dd1d1fbe031e863bc87668d7816d5e3c9f40cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x58c46bef0c86cbae25bf78b78076cedd421acfeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x58d120c3b7e66a158ef2e862de0510262a87ddc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x59365982bd5c83da60ad88861a27817aae6d3efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5a0a0d6f3b2f57c42249ac79819cbebae4527f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5a0e731b6c9b4671e12178fea73dcc76c46c4d70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5a8d5339a21932ebc340af74ee852e69d618737f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5ac1ec3a11fd2c4d48abab4912d4c8d2fa6a2109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5ac38c10d7794f1e1c28bd4ccd0505841968b892` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5acec082fd8d159a1456c377e1ae770d80b1359a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5ad57f7cf8d5a3e966338ab75fab6967c1ab8b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5b3622a2c4287be91bd2ea2ca801c3c0eb49e9c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5becbb1e9a125f00103af7d8ce4270066073ded3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5c124e6e9a31bd10c6254702e9e15dace0124acb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5c3c9d31729c6545e5506713c1b68cc99451afa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5cf0c72ea5a5a5b9d7537a501083c5d014a88f1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5cf38aaded9aa9981a0541ad62526d4348009863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5d2c3bf75842f33f15ac324ee4ca36ba06194ab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5d659d77ace7bcc8a34304b647660be22dae1d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x5e749d43d322e25462b5820e1832876a5111a3a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x6195a309139e4562877ab6e46625779f95723c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x61a94879134a7db6296c98317332f0c25ee020bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x61d26e2e814fec09282a170cf248628d8e84086c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x61e7b2332ae851d536e5b5781305f7c7fcb50b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x62ce38598e9d9be0fc152cf4d2ab26306fff7f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x62e5cc0754569fe40534d58c6a86212d7e8b1f64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x63280b6647cec33435d5bf561bc9f10ed83965fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x64987e68acadc0d83be16cfa0f35c83c32f5ebe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x64e7547b0beb629591dcaf47195f5e16d1b3c8b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x650463d863100cdb1d097486547107762bff0e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x661e2c1e5415d1b245358f84fef5867fa5008ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x670218ef90a2d79e4cece0e8a8ea1aaa5bde7544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x671d513e1081ceabfd409174b6e64c5d83d8e6d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x687d70671e3ccd6aefd80dd0acb51a9f52880ecf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x6897f51c43122b78f5b86a694379dd279075071e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x689cd1a3541e9e9d9dd80397c191aad7365fd174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x68a2b4b5b8f0eeb509d01a165d8b99cf96a02318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x6d35cf89af1c1e87eb4d14aba8cf63063b19c2bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x6dc12e24b5f7096c140766f1d7f8970bbed7fc90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x6f3574a5df36749d29a7e41adad6a3c6cc1586c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x70eebc12e7f58ba64a3cf2284013e7747adc4bc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x721b239536642754bba8ada643987c33b3b02f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x729eb3a91bb09f9cdbdb41e74f1af805e0c7befb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x72b80770abd36ceb0d6cb1eb37094521f31f9190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x737b563dc0f73ade4281617874c42ba8cf9bb783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7468f8d4bce079cbd169065f21a2065936b9a1b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x75d2c45755bd437741285c27254437120721838b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7669fcba229ee348d27b7977d7824de4e21c0db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x76f2be498e3113144ef84a5aa1799d0f0d3e9310` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x780380eb4787775b07dfa60fb11c2cdad6a44f7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x781b7ab0831514d97dd70a9148b2b721441292e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7972cffb6945d5d152e5003e316e65d7df29726e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x797ad1476b08cae96ca37ab7c6d637188694cde5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7acbbc5dc30f09ae4e53bceddab51d4073debc34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7b96aa56cde1f41fbca48e991947826d9488af53` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7bc52a18bd45f72ba2ddfd1b5fa4c09936a110f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7bd2e57db29ab54dd1d7cd3350a37522756a3f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7c14e42e3775c30a27163c6e6ac863ea75ad189a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7d2755386c4ab611404ee8c5be72cf8608be2ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7d52626d443dba74537f58b0a923233bac948197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7d6ea09e567765bafb3fbc196ee20b21bea917da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7d7ec18261f5f0123977c485f5fffb97c16aea66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7f69630b19ad63ec21411f19fe229b1daffe2107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x7faa0ed29df3d6bbf3d09b81c89445395b014646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x81942caeae014db61219a5d98c4ead419e4d5321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8197639d3e1aaf25c1e965891dcdf227af719f43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x81b3d852eb62cb3a8eee9ffa07dde073c5608ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x81cf61db2d9a35305e54a0e1e9e2f7ac9cb93115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8233af2084d591b10487f55a4ca61de06667d011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8382409a69f40be8b45495052ee97a2f912ce7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x841da849a4e192893c0dda53f1b2c34722846e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8430e7bdf053ecdbb6a2bc2e94ec05d5ea4e3619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x84564e26e8f76361ce77b58da63baba88d646336` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x847d24dfa908f216f381c621093ff0c5f8c772b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x84c61765d553434d3fd613f4c0839bf491807b0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x857f871755390b4f1f70e679406549f08d3a9ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8623e16913e287d1a6457d6ece37463ee04ab13e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x86709e5d06511687d05c717e4d07d4792585eef5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x867d774b6c4e3869fb578cd3e5b66e1affde7eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x86debd20f18cbbca40ed0343ab25bef94548e0da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x87bf4045fd95d337bad57c28baa5e1934921bc1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8815d2810854de93985829f7376bd4a86e5c2ad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x886101fbac08120a37b2b7c6b07173a20fd36143` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x886ef85b0f8184e255e004410edbbc6620607aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8880b8bb7339deee0fb632bc6703ec567654a04c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x898853feda928029a7dac435570fbe16d395f4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8a438468c9e82eb66a1378091bafc91a7f393d7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8a4b16c93b5ce4eace8c98e89808480672390b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8cc9c8660c1c44d92141f17367885fd7eff6daec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8d1ef4a42b5f6e81bf751a5d8ce53d44fb6b5f92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8e8ddcfc132471363b4bc35cf56f120c27922fd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8f1b15caa673e94673b176befd9751243a1f927c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x8ff64e4463d7f296f4840857a7b1c117bb646dee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x90459c8cba0fdd12a248aeff048e67f667b2c05c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x906cdb55091aa5d8d273d3f1240fc901b3e7c80d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9139fc3084fef5edfb41e9cb533af65b729d8690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x919931749def9cd343cea582b2bcaabc5365e5c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9240a69937757af92b4815f01ac3ecf7e7c096d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9278f11d8b174c3090f0530a5ba2279d762baf32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x92f3308c307fcdd4d60b79a3c5985c6c3c8c6903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x93aabe5509c226b28eb1372c8af867ae49828378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x943552909a7315a79befabed2c542dcbe332addb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x944234d155e57e2d269a25beb487dca1150b1391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9464f8be968b3fbda68e854234b49aa85f193744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x94b12cc01fe62e65677388cdd190a9ed0aa0a937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x954a1938b1e0d729559bdd907fe6e5a94d0e7181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x95511322b1be564b5f5a420d56042138d2ebb0da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9621e6de5936226901b18f7d19c29b5507b4faa5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x96571ca61e90f613c404d8a84151921e04e9d88e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9739d14b498e786f42ced8147b8efc00a8b33b7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x97715a09a33d456244bde822769507f57a9db915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x979d8a04893a3c961e1c29a9e2e8dc2e8017a81f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x98307d8d59e4e68ec4d0bfb84ba264f771f472eb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x983325dd4e4038de2eedf6750f85f9c5fcb3b0a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x98cf6c00fbbe2fcfe9efa208843e186c3fe7d6a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x99434c9b62b322685f6c5cd59f9879037a8ff93d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x996d2a3dcdffc99f3f738c00f794042e9a31ef54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x99b0bacd5572bf0ed6b5cceb05526b90b4473c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9a0b0f77c010980e45b6eb0e77da2a57ab89e71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9a5da3c0b7da262f198cde887167937cb0c6c155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9a6e2c8958f37bb158924ca41864ae1afdfa0339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9af4198eb32eb54a53f0649dff29ce6f6d5427bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9af91d9741d65ee2fc854a8b2949ded10d5eeddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9b200c26dd2d526e8317fa6b2ba9d77d5762b0b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9b372f3ed1c5600d7fdcd2221a3a3127180fb2b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9c19c75d2908615e764038ce5bbc89ca8eaeee52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9c54e32ca80c2575cf139d625aacbda1d740b445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9d3d8e54906b9c802fb9d5b9636695abc3aaa806` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0x9fe42a13494e445ee811cac9c045a6356b8f4f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa0f2a664a186cecb79ee590e8397ae610478627b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa2cdd5112d87922e76e2967fdcbd886c06ae2e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa4e3f7b21e06f43135644ec3d551269e3a195b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa4ea17088bb2872c91089490753254a1c874acc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa7147f00222cb167dbb8ae54e82cf1ebbb3889ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa7441e49c4abb61ed77c6ed4a110bc9878148f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa752ae45720c98981fe5b298b919137f67e1ab24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa7b90bd1d08db266d123a914502959c8de6beb0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa7c25cbf928571b55bbeec20ca54242ba2e3bae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa896fd4aff0dcb0ca3a22b453d4c974343276bb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa8e41f392fa8da522d8a957b7975237dae354fa5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xa980d2b5f84738c836952e2dad47204abfec6c8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xaaa0f10a7e40f336bf4da63028c68658d31f5a01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xab207b8492a17ac73c48fbe31a05035fabda4bd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xab47fc407ec5a947862474b0a820fc566d72c7ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xab76759d711c1d65c84a10e97cdb8b9e029f0971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xac62a9c6d45ce456ec97d1e46817999e88b4afc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xad2574b83133aa4b2851ad5ec1211a7a384a12d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xaf4c59b5ec9f0b1dc76e1f761b96721331cd7c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xaf75c01fd3bdd28342e54d05c1d3f1ecaf955aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xaf9922823c7a05cb0f5cc042b1ec9076d4da002c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb0b145ebe6dca6edba457b7e7a0e9e917c1d7838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb1cc9ff5c9fa14fe44f592f642b7d0037e9faca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb21a149b3cf123e914959a01b25e6cc0b97bf45d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb2229defd3ef57a068ce610f82acd5f73eb13d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb308d59bc7a73cab44647e612739f7a4f3897fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb57123e1fec23180d6f00872e0ca780b476ad498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb5b1ae9df9006f4d23efc0b4ecfd6254e1a1c953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb5e118e53aa28b1022df015777734bf2478a7e2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb6018a81e6322aabd6d68173fcff589f33dbef49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb6d619427a0657e6edfea95e8e7a5d8dca106dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb7c19d6bc9134aadc916aa531ab51cfcb177e0a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb84ec23dd5321402431c835cd678d128e9d7a513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb8934145d57068c7e178dcf073816e6382bac221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb8a22b186bdd829c97920887b550b396d5e03b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb8be99bdcf124522f63116e319075390fa719614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb8ea5783f24f84feb7d71bc9336bf8e8b197e590` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xb94ca123e807f763deeeac4e9ce5f0b432a2010c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xba27a85ea404db32d6684e7ebfaa80ddb12bae09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xba7aed3a6cd6be919d5f12bd87dd9be60f0739f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xbad4edb44db29b392c8ff5bd24e01a691ed3cf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xbb43c10e002c5e3a54662d3093edb1c97a2eb68f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xbd0995685afa06b5b77dd0dbc41b15a32008b99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xbd455eaaddda62f9245834d03ee0e7c1096b7da6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xbe4c07136bac58da900fda8820bdb5b4f72d1529` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xbea37abd94e56c343e08ca6d7027f5ff2f6c7a82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xbefbd2911b547801ad359c6d65465466be5b7a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xbf81c7eb810818521c843a49650c9dfa5d30ae7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc1849745e88855215fb2e0be192f2897050ecf6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc1e6675d6a5574b98f265a40d6e7303dad2448d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc2286f4c6d248049db3d8c0e09d7d48cd95a33a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc2aa6a16fa0b8f5c98cb0d4f72544cb41c340054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc345d424bc5a00e944f929c3dadce3d5a138a3ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc3867c954d2f5ec5a2fdda4ca53496004a651770` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc3b0d5af296e796ab0a2d773842b4fa7eebbbb89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc4e71fc1c10e667e4a19a0e7975e7af560400686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc523446120f99a3f9e50c7aea9df4e673e807d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc531e91ab3e4efafbb44c1efcb4dbe6b7f1ce7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc6bb4bf7dd98a0542f962ac62ccdf01cb4a73f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc6ccb2ed8d93bc8fc8717032e094d51efa943131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc762886a9e480ff69c1c9ac2e2b34e04f95aa531` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc79b3375e808c6e83f866aa25761183bd82ad6f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc7bff15cdae0cdf93137ca9da9feeed361a3586f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xc87a1d68a4f037e0f7dc56b42b86b04061613e30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xca1a0136ecd133ba4ab6a7313fbba93af45c1a1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xca32398041534064e76f86ee7df3ab4e3514af29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xcb92d1a4bad1f5f814a388fda11ed8f8e6014a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xcc1d21c12bc7dd49a04360ecde85f86d6b1b84f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xcd7d44b13642c898047b8fee9a2deb061b72f6df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xcf5c3b43f97c12dcea5e95e72321dc8b159694c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xcf74a172f8270c4944ba69cf816f524bc1cd4152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd10a8a07d4957ade71e75867dab06ebc2083c408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd1d81d72b1a6881e2eece71fef7ab6bb827ff542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd21b0bf2e8929d67240b54f2d017493b3cd041a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd3936d1a647bebcc735fc6c4eaded51dc8e635e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd3caaf8f885a9634f0eb1b3abf2815eda74fc53b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd3f6d49251f1d0380caafd7499f3b3cf1ddc0051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd4a8c7cc2e3f7a796319c4eda0bf36263e4609fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd6403875e9f8ce797e75b3cfa96b470a74660270` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd6484238d4d422cfa2270cd556d12c8fb0456847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd77b689fa414214299148410b147a850f39b7709` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd876cf61de4b0783b948ba8647d6e56179843183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd90fdb94f3b95884c06a0199a327715e4eb9acdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xd9e37df02833c96292825ce843e575f0fe60395d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xda23061bc2b98ae154ac913132275da01d910fa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdba7e4a553f89756a1aafc9c13cfedc5212e0363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdbab7d537a34c9363988c7716d205784a385ab48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdbd73f397b214037bee32f25852798e54f7d8898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdc6cc55a4e13ec40458bd61fb7a4096aa5355916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdcef62c3600b3d7743580188059ecaf2a88cb6c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdd25f36ab4f4f21a0e07c9b9562348b1d041fac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdd4989ec1b0066524c64201325cc8b08454da9aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdf59e65f639be20ce4b999fc808c79025d2912e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xdfa04b6a5aad6f8d230eac155b4cf4d7f48bda8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe06986aa07c9681456b85f89b2673cb14345458f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe07008fbde7b9804cdbec575c80cebac94707e00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe0c75119d2968b0fe4a013669ec4d7f423749373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe18d1f7256dc9ff1f95f84545583bb02cfde6528` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe2f3115728e9ac9ed46f3f444a751b942c3aa7c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe3004bf1102dc4376e33ab700b2c69cbbd8614fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe34f4374bf72ee4b69735b651dc60e8ee9462152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe39dda9a1f3bc22aef538f5fad02716497d3c211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe3c1630a4af1e08cf72a4828f015c8765e2f4cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe456491906c723ea37612332b952c1bf3ec4ecbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe4ebd7eb47409dbd08b1743a7f1fdae9fcea8fc8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe5060205f400e84cf7b1e46105f93a7fac96f5c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe51cc36f7f34d2789cbd40b50abf87bd7d36bee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe6b616656cb0379fcc1f6a2599f5a97f32280bd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe78954762758346a27d1b8416e0c0302443f3c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe81644387e8c0221f412829593b5b1483d19709c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe81acd144dc27ae123e69c59c393576ab459a5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe86437bfc40ad517a6eca67a70e665fc4c46e148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xe8a799ff0af1ef265ad1880f61aaba7650b99beb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xebaec1603f81236a34327c7abb05f10a40c07a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xec1e91eb5dc3ef979ba1d2b5be477378c871905e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xec671be4d68c38fee8c26c4e417452bb69d1e284` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xec7de1315103863f7ac6b0997c339fabbde27329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xedb4b10528f26bfc0c812e42cc8ccf91235f4760` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xedbd495f1595c571eca29730519238857c5b5054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xef1065bc96ab152aec678eb675917d418bd308d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf10ad38e748b0b164706b2e607d3c788ebbb9b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf2753cb7168d26ae4d37af546ad339ade08d7c2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf322f86cf9eb80f1e37a11172157e845e32df413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf42e1468892dfb7a5cc299c85c1077497898e107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf4c68a0e93e7cc9e91a7b74bc52e745056a643aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf4cdd330b3920b1c9a751d5691a0944113e02050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf52602253474ddaf6111133adc1f7c3d28a30abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf578472f08d56846f3281646cdc4c28b967ca290` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf661737c6ab555af9b48ce7ec1db10cc8f397f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf672dc8124e2c7d3e94ef7a404b8ac7a514eba62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf6f3cf033fbc2663a3740b33458690c50b79cc03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf7262fe201ee98a03d3061e4a2457b704b6e89c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf8142e3425611975ca49aa4790baff2e41bfb39d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf8c95e3b0dac520f37235282dee0363f3d1eaf78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf8ca9655886047899bf4c2bee79195c281174a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf9d6e2a04187d60e4fddf94952f801da18522363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xf9ffaa7cf43784f3da09497ab5ebaf8c8112b1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xfa1ea0a593d43eff143eae02f47335980ac2d15f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xfa48f351853e17e9ac2e414911b83daa8b98fa37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xfb8cce3640fd1105810239cd8bc6d85da1aae4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xfc975165043ad31335903c72dd531a253ef5f0c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xfe646c63b1f14adb4f5f888e941e51fbf29f0bbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xfe69d50cdf61a6838f558dd5a470f9fdf19f96d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xfec8c34452f58abce3f83586f05126d0baae152c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche-fuji | n/a | `0xfff01fde256e47fbd96f6fd26c28ffd5afac4827` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x0bc1c72a169d8a5a564d787a46521496a008e8ef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x2f44515dc357e64edac8cf0480b2a6eb626d1979` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0x38d9f113290ec7b90961bea854d7f2c1535a32fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | n/a | `0xa61008d3f38ae02325ae13d7d6b67cebd02d18f4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 412
- Live contracts: 0
- Unknown liveness contracts: 412
- Source-verified contracts: 16
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=13, exact address book overlap=2, source verified unclassified=1, unverified unclassified=396

Showing first 200 of 412 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | Exchange<br>`0x4dc10a62a904bb7b2acd3b99596895ce0681a09a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | Exchange<br>`0x80768783d18ad5c9de46d2cde398fb0c193d5885` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | OrderBooks<br>`0x9cf797df135aa671e97d1b713cdaeea9fca9170e` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | OrderBooks<br>`0xd95bcc48579a759919201c8f48359d361c50584e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | Portfolio<br>`0x43de3a895626730c86120873952375e8269cab1a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | Portfolio<br>`0xac0f301b3f7e1d48553535089bb2c201760de0d4` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | TradePairs<br>`0x16d8a7e5300acaba43418a6e2c68e159c9097bdd` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | TradePairs<br>`0x625b7d76f69095907fc3b467c0c3be07d1987ba1` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | TransparentUpgradeableProxy<br>`0x16863a1052362012352f07ff3cd23088414c67e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | TransparentUpgradeableProxy<br>`0x176e82bf0d30ec55ae3ef98e4be3922931cb4ef2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | TransparentUpgradeableProxy<br>`0x2c0e189edfb3572ac67063bad7def6739109df10` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | TransparentUpgradeableProxy<br>`0x3ece76f7add934fb8a35c9c371c4d545e299669a` | retained_scope_excluded_inventory | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| candidate review | TransparentUpgradeableProxy<br>`0xcb1556a61d047523bce9da9f79939faed62c9d19` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| exact address book overlap | ProxyAdmin<br>`0x9faa0a5dcbc0cbc81719ba6f0f1726a8baae16f2` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| exact address book overlap | TransparentUpgradeableProxy<br>`0x1d34b421a5ede3e300d3b8bcf3be5c6f45971e20` | retained_scope_excluded_inventory | unknown | unknown | verified | n/a | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| source verified unclassified | ProxyAdmin<br>`0xb34f9c897edba026efc29a77c2f575e607402644` | non_address_book | unknown | unknown | verified | n/a | `0xd30273b5b9333556b960b1602bb54413f82c9858` |
| unverified unclassified | UnnamedContract<br>`0x001ddd77728b7cb25013e99e51f62959921077de` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0038e287f7e3a26f7a6ed33d72b299e62d36706f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0089c051c061dfd36133ac499f5b21abe9274399` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x00a95bfc4e0691bf5d32c521c78bc53eac70a84e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x01d0260f06cbcfed69ae94b48e9a92070055710c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0261a12687e72cc25e4b9f259e92af30e873b1a0` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x02cc6ce3de62cbbbd2fbdc6abde6d7a0fe01b2a7` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0360c844d52b171e9550f10448772241ff40287e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0436786a124761b26745a382ebdb59ef9fcb61aa` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0542dcfccb1d5b4fa2227293571301dc8c506bb3` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x05ca10d98a1afcd514394c7b4413cab4a3d6b792` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x07610bd8f0a3b2c6b4a49de373b5f8119a117895` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x078126a917dbd76edb31b5b7f8e1e735946ece3d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x07eeb216a9f79c87304530fed5f5b4a4b544a987` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0897562399a86b0692030ef1b91547e7b9b3e398` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x08ea895345d4545f2c9fc0fb3cbb51845b77f560` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x09734610e2a9623dab23ec1d2be4409d941ff4c0` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0a6c8ecf700f963a3df17a6c96bb7648fec668d2` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0b0a7c1f6bd2024d930c9ba5be1ed44d93e5724f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0bd60503d621dca23920428fb057f6f3d3c67518` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0bdbf6166499f90acc0c23e6cd92f6bc1c582aef` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0c743b4189d7ce0e3c601a9d0b08251d57e12ed4` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0dcdfe57d02e767cf0566844788f0db528e95ed6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x0fb11c3d0a459144ff445672b325eb4649a6ba58` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x100a006a3bbcad71b0ad9897c89f7b7cbb76434f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x10f6adf949bd7d65794f3ed26b9844633ed2f2bd` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x116b47172d07af15f6dc6b95f75f92b51451cffd` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x122553b059fcc96d5ac05b364f0aa4ded802cb14` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x123b9714a78f7c857b5b6e3cb8b0d706d5488a5f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x12d7bf5e25b05e52c4472937368961b5c4ff9a0f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x13861f18c1037b3c6e24746823bf712a82ea8e21` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x13f9d2bed930fe8aef23f898b3411834d90aac93` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x16534d3ce189baf69243cdcd8268db3c3a52d96a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x179c608155a246b3e0264066db82364dea0c2429` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x17c8f10b25b30b64112bc3615df39f50bcdec7ca` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x194fbd5eda29b540b9c3615fac40ab53b2fe766e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x19b399f7fc510366015ed56ae17673d10c1c9d14` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x1a195e35fb8128dd40bde2e25e9e2d26657733f9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x1a3ab918ed5e0a03fa034b4a3a3a4b5f4a2d8c68` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x1a7916704339ba206f122cd637a568dad20b4f12` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x1c5701186306f14a33d6255cdbf90b17a3b92bd6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x1c5980ca66e9f0cbbd18d279f521a81b9a6437e1` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x1c6445c87497c951084027f77ac6634d783d9980` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x1e69e82a661a0a333b0d53859cb0f01922accf41` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x20230f1fb0c925aa47277452c95b587d5b03b012` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x209b5484898713ae63434c2456cc997fcc41187d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x21e0c0d7e1f79557e5d3c4c943a58a2e2f4dd848` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x223ed161c1f08396a0ac0f4c2db2087898377c85` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x22bc41439805ad9ad3a77664c5094dadbdcd824d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2326546463a8ba834378920f78bce8b36872e7ba` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x238de2847ded095d47b71b103d25c484fb42f3c8` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x239266b1dfad9fa428216d444b5dfbb671b9485f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x247535509ff31d282ffa98d1a9456c92d9c99c02` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x24984b76703b466404f6da2518bef8a313433391` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x24db5d222a2eb9b055d00b65342b7cfee75f95d5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x252ff3c4a5c595d157209e72ccaeaf16ef2d766c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2871d6489ff3728b7125551b80bbc401a2f88c10` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x289c479dbaebb86bd2a3f5cd9fbffc08532c4d08` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x28b01283d328f53a2df5d02feab3d0b8cdbd1f00` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x28d16a6397dfbd6aac4b0b4af57d3cf8132696e8` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2919351244076ce2aeb583defa05dc84ffbaae80` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x29a775819cd927a963588058617db0602cf6ea8c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2b7fc352654424b6919dc3cc44ad648e50dfbd6f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2caa4a0a2b58285852e12571eaa62872a8922b89` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2cf4beb6cd2ce0f8b164f058a83dd08705c82eb6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2d121b84e8e881062b5108d55e3ea28630ac08a7` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2d7715b777d2a8326efac845fc439a9d7d0a4629` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2dd7d4fd351669600e6e2cd02a83b9b438f3117c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2ed84a1fe0be49269047373859a16ec1ab8c6de5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x2f291e5e3a179fc9b71065d2ba7ea77fad8df6ed` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x309f4ebe86c5a28c1f2c7caaf5836934d281b582` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x30b0b0b1550f6a2de3ddd4276c8bb12880b33af9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x30bd7afb4d7f1a98849200a6db26531620ef1bb6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x318a43ad5b7b821795b5f4ab13ba197b9ee82231` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x3334f8c59ef94025f87c8faf0b5bcf7ca1861d70` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x353ace0dcb5ff9bcd7545570acf6f98e4fda7ba6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x35f16bd993383265244b786edd4891e0f2104c71` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x3612389eeb2533fc5945bc4f88fe198105f04a63` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x36b8c532d6f5229010594de5e2fb714015e0e5f5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x36bc8453b9c4f57d76e5912f0b18465652ad218d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x36bf87c912a8bb04dd79a5c2752f27fd020e2680` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x36c60f4088f758c0e81d9d80e0c0c7d520c70e60` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x37c9ca3f8bee865933e886dc2dcfee943f1b12d6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x39a1c8ac3d49dfe643ba33ccb20b32ee37a88898` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x3a89f1ef8f7d466c53f942a46468fea542c448a8` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x3b4ca1ea12ddfd41cb68780a94ecf8a74eddd15a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x3bc3da2a1bb3880c3fee8b2c13e8368afa9c4f4f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x3c84b18a6ca406cb608ce022e785002d3d76eacd` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x3d67bfee2e0bfd8c742ec4ba2eee7b61599b2db7` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x3d72edd28bec6ae6a1c5d15cad152203f4f546bf` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x3e514b74a10aa51c2ca5aa96d5afad1276cf7cbc` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x40ea649b3eea68a5bdfc7d2bfde21ed88ba807cb` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x420a57dd227039eb67fc24481cf9821ff69f851d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x42ef8b7d097b2a2c97349fc36655054d387d8687` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x435e3f0e2309f725ecb5c3325ed653cf9c4bcd49` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x43ddd25b283869073acf5c98d6fb9a364c0bf712` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x44968f55cfca8fcf4622448cf2ac659933ccf708` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x44c40a26a749c6935d79ae65d987a003f876fc8e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x45307b2783036541288d3a884789f2c8eb205c4b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x459843595d0fbcfbcd0530c12b83fcc424cbdf51` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x45c1c670346ec645a4528bf23ef83b6e9c0e42dd` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x45d88f2781d521742d4a79382573e68319373c71` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x47f208a958ed276fee9a85bf1d3c6e9c0c01b5c7` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x47f711e7eb01380c9eab4784f6f5b4bba36048a2` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4847fa92aa48234e6e705b5876ee0d2beee7d993` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x48e07f5e32db5d237265ff40c7798439bdaabba6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4a5ae1c25e74263f384da4bd076964ca4ed763c3` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4a741abfcac357fbafee2d4886414af2321c8cff` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4aa012ba36dde70694ee5580e775dfa7c4264372` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4bcbf93be36058d4d9d997ff394c92d105d77d78` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4c1b0c8721a49351dbb559b2d017ab0ce47280b3` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4cb24437aa406dc5f77ef9237c9422439e9de324` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4cb9611a985a95c756f5aabb0e11c7ac7d9fb76a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4cc025a30da14b4a9cea04611f2867e81975ce58` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4d6c6f92b8e82b3b4bcbebb6cb6fbcc094994d45` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4d9e0b74d10b253b5d2135d4f91940a29678d54b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4e54e20d9607ec752b67136b31c681a06626ad79` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4ee02fd03f2c4dfb42c9cb75247865a34b689479` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x4f412d2458eaaada9c9570eaacc08364631dc5c9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x50889adf5b7478c0b8c0364121dad425f8accfc9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x513e7fe83297a3493250ed1543c378eda8abbac5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5174a5f5d7caf6a6116af14272d121678c3fbbd5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x51e107aeecc9167933fa31e7bbb9e68c883769a9` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x536fc8da8328405263248988a4aadb701437268e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x54661202f9bf35660e2eb84f1cd0f37639059c8e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x549047339ca060d8b6badd9c1610a88ed0eb7f5a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x558037fde9e490a680bc395d0a8192aad26afaeb` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x55b79e1eec73df7e39173b68d629e24fd91c9bf7` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5653f9b775495a93be1073420f32091f31ad14e5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x568d66ef05fb9d46b681ef9462468fb57558dcb4` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x56dd1d1fbe031e863bc87668d7816d5e3c9f40cb` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x58c46bef0c86cbae25bf78b78076cedd421acfeb` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x58d120c3b7e66a158ef2e862de0510262a87ddc7` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x59365982bd5c83da60ad88861a27817aae6d3efd` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5a0a0d6f3b2f57c42249ac79819cbebae4527f9f` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5a0e731b6c9b4671e12178fea73dcc76c46c4d70` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5ac1ec3a11fd2c4d48abab4912d4c8d2fa6a2109` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5ac38c10d7794f1e1c28bd4ccd0505841968b892` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5acec082fd8d159a1456c377e1ae770d80b1359a` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5ad57f7cf8d5a3e966338ab75fab6967c1ab8b5b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5b3622a2c4287be91bd2ea2ca801c3c0eb49e9c2` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5becbb1e9a125f00103af7d8ce4270066073ded3` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5c124e6e9a31bd10c6254702e9e15dace0124acb` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5c3c9d31729c6545e5506713c1b68cc99451afa8` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5cf0c72ea5a5a5b9d7537a501083c5d014a88f1d` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5cf38aaded9aa9981a0541ad62526d4348009863` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5d2c3bf75842f33f15ac324ee4ca36ba06194ab1` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5d659d77ace7bcc8a34304b647660be22dae1d0e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x5e749d43d322e25462b5820e1832876a5111a3a2` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x6195a309139e4562877ab6e46625779f95723c59` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x61a94879134a7db6296c98317332f0c25ee020bc` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x61d26e2e814fec09282a170cf248628d8e84086c` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x61e7b2332ae851d536e5b5781305f7c7fcb50b6e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x62ce38598e9d9be0fc152cf4d2ab26306fff7f77` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x62e5cc0754569fe40534d58c6a86212d7e8b1f64` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x63280b6647cec33435d5bf561bc9f10ed83965fa` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x64987e68acadc0d83be16cfa0f35c83c32f5ebe6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x64e7547b0beb629591dcaf47195f5e16d1b3c8b1` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x650463d863100cdb1d097486547107762bff0e71` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x661e2c1e5415d1b245358f84fef5867fa5008ae0` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x670218ef90a2d79e4cece0e8a8ea1aaa5bde7544` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x671d513e1081ceabfd409174b6e64c5d83d8e6d5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x687d70671e3ccd6aefd80dd0acb51a9f52880ecf` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x6897f51c43122b78f5b86a694379dd279075071e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x689cd1a3541e9e9d9dd80397c191aad7365fd174` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x68a2b4b5b8f0eeb509d01a165d8b99cf96a02318` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x6d35cf89af1c1e87eb4d14aba8cf63063b19c2bd` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x6dc12e24b5f7096c140766f1d7f8970bbed7fc90` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x6f3574a5df36749d29a7e41adad6a3c6cc1586c3` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x70eebc12e7f58ba64a3cf2284013e7747adc4bc1` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x721b239536642754bba8ada643987c33b3b02f65` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x729eb3a91bb09f9cdbdb41e74f1af805e0c7befb` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x72b80770abd36ceb0d6cb1eb37094521f31f9190` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x737b563dc0f73ade4281617874c42ba8cf9bb783` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x7468f8d4bce079cbd169065f21a2065936b9a1b3` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x75d2c45755bd437741285c27254437120721838b` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x7669fcba229ee348d27b7977d7824de4e21c0db2` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x76f2be498e3113144ef84a5aa1799d0f0d3e9310` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x781b7ab0831514d97dd70a9148b2b721441292e6` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x7972cffb6945d5d152e5003e316e65d7df29726e` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x797ad1476b08cae96ca37ab7c6d637188694cde5` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x7acbbc5dc30f09ae4e53bceddab51d4073debc34` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x7b96aa56cde1f41fbca48e991947826d9488af53` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |
| unverified unclassified | UnnamedContract<br>`0x7bd2e57db29ab54dd1d7cd3350a37522756a3f32` | non_address_book | unknown | unknown | unverified | n/a | `0xdc6aa5c2a07408b3929d797bba3917b78f20ca52` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[Dexalot_03092021]SCAudit_Report.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_03092021%5DSCAudit_Report.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [[Dexalot_15092021]SCAudit_Report_2.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_15092021%5DSCAudit_Report_2.pdf) | unknown | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [[Dexalot_15112021]SCAudit_Report_3.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_15112021%5DSCAudit_Report_3.pdf) | unknown | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [[Dexalot_18022022]SCAudit_Report_4.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_18022022%5DSCAudit_Report_4.pdf) | unknown | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [[Dexalot_23022022]SCAudit_Report_5.pdf](https://github.com/Dexalot/contracts/blob/main/audits/%5BDexalot_23022022%5DSCAudit_Report_5.pdf) | unknown | Audit | 2022-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [hacken.io/audits/dexalot](https://hacken.io/audits/dexalot) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [7311] [Dexalot_03092021]SCAudit_Report.pdf — no match: All contracts listed in the Scope section of the report.
- [7312] [Dexalot_15092021]SCAudit_Report_2.pdf — no match: Scope section lists all contracts with file paths. Audit date is September 15, 2021 from the cover page.
- [7313] [Dexalot_15112021]SCAudit_Report_3.pdf — no match: Contracts explicitly listed in scope section of the audit report.
- [7314] [Dexalot_18022022]SCAudit_Report_4.pdf — no match: No reason recorded
- [7315] [Dexalot_23022022]SCAudit_Report_5.pdf — no match: No reason recorded
- [12285] hacken.io/audits/dexalot — no match: The provided text is a marketing/overview page for Dexalot audits, listing multiple past audits but not providing detailed scope for any single audit. No specific contract names, file paths, or scope sections are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [Dexalot_03092021]SCAudit_Report.pdf | Exchange | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | Fee | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | OrderBooks | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | Portfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | TradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | IPortfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | ITradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | Bytes32Library | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | Bytes32LinkedListLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | MockToken | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | RBTLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_03092021]SCAudit_Report.pdf | StringLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | IPortfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | ITradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | Bytes32Library | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | Bytes32LinkedListLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | MockToken | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | RBTLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | StringLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | Exchange | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | Fee | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | OrderBooks | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | Portfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15092021]SCAudit_Report_2.pdf | TradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | IPortfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | ITradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | Bytes32Library | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | Bytes32LinkedListLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | RBTLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | StringLibrary | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | MockToken | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | Exchange | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | OrderBooks | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | Portfolio | unmatched — not counted | — | listed in scope | no |
| [Dexalot_15112021]SCAudit_Report_3.pdf | TradePairs | unmatched — not counted | — | listed in scope | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | Airdrop | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | Bytes32Library | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | Bytes32LinkedListLibrary | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | DexalotToken | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | Exchange | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | IPortfolio | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | ITradePairs | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | MockToken | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | OrderBooks | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | Portfolio | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | RBTLibrary | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | StringLibrary | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | TokenVesting | unmatched — not counted | — | — | no |
| [Dexalot_18022022]SCAudit_Report_4.pdf | TradePairs | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | Airdrop | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | Bytes32Library | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | Bytes32LinkedListLibrary | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | DexalotToken | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | Exchange | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | IPortfolio | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | ITradePairs | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | MockToken | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | OrderBooks | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | Portfolio | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | RBTLibrary | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | StringLibrary | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | TokenVesting | unmatched — not counted | — | — | no |
| [Dexalot_23022022]SCAudit_Report_5.pdf | TradePairs | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 409 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 63 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: n/a

Zero-match audit list:

- [7311] [Dexalot_03092021]SCAudit_Report.pdf
- [7312] [Dexalot_15092021]SCAudit_Report_2.pdf
- [7313] [Dexalot_15112021]SCAudit_Report_3.pdf
- [7314] [Dexalot_18022022]SCAudit_Report_4.pdf
- [7315] [Dexalot_23022022]SCAudit_Report_5.pdf
- [12285] hacken.io/audits/dexalot

Fork inheritance lineage and inherited audits are included when available.
