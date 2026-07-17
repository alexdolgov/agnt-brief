# Agentic Audit Brief: DeepLock

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: DeepLock (`deeplock`)
- Website: [https://deeplock.io/](https://deeplock.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 55 unique implementations (120 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $1,786,201.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for DeepLock in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Outside the address book: 55 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/28
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 55
- Raw deployments: 120
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ALPHAGOAT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3172057a27b0dbc48a99b8fe2222c4535d56b44c` | ⚠️ Unaudited |
| ANON_INU_COIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64f36701138f0e85cc10c34ea535fdbadcb54147` | ⚠️ Unaudited |
| BabyDogeShiba | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4caaaf84ec2b7106b1679aeb1d677e298adf58c8` | ⚠️ Unaudited |
| BatCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xa6467d83a32452ab9091ca4e8edc3831f8aab088`; bsc `0xe2ed1a8b7fac86bf00aa3b920c1e5c3c4962b7d9` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x89313ffffd74e00c9e88b167564ad4b3f5c1b20a`; bsc `0xa3f0a9ad24a749f3aa14f33c019b708259cfa514` | ⚠️ Unaudited |
| BluePill | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x7108955947e352b351c4bb20b0a31a3598e7feec`; bsc `0x711b1dfde2d77c8170ef397cf1afadb071e632c0`; bsc `0xbd23127eabe2cbe72127acdd1ee0a5d3fee19c2b` | ⚠️ Unaudited |
| BluePooCake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x19024b0ed8d4e4d5cbf7dfa94a82804bc9a79be3`; bsc `0x2e09c43c0bf356822a17deba91510379527bea86` | ⚠️ Unaudited |
| CoinToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x6396f960d14d285e70f9e8dc44452ccff7075896`; bsc `0xa27cf315b7f9e529f3d56223a5c3a590b6100e15`; bsc `0xf919ea3ee19a22e067df0217d21c76077f245a4b` | ⚠️ Unaudited |
| Crowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97c232aab414a5aa766e9aa56ffe692ed5531696` | ⚠️ Unaudited |
| DeepAirdropStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f42b448665c736fe827911c65a759d4bc27bd2a` | ⚠️ Unaudited |
| DeepLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x60de5f9386b637fe97af1cc05f25548e9baaee19`; bsc `0x64902402af5fcc74820605fc8d49c4d499b2c382` | ⚠️ Unaudited |
| DeepLockLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x10dd7fd1bf3753235068ea757f2018dfef94b257`; bsc `0x3f4d6bf08cb7a003488ef082102c2e6418a4551e` | ⚠️ Unaudited |
| DeepLockLPMining | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x03dab688d32507b53cc91265fa47760b13941250`; bsc `0x27f33de201679a05a1a3ff7cb40a33b4aa28758e`; bsc `0x311542b416a238a7151b21adf179dd695bf6bfd1`; bsc `0xf72b52a988284301c219e5a24f900be32ed2f2a8` | ⚠️ Unaudited |
| DeepLockPrivatePresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4095dc2c9c1a2d2677b29dc3f5d69b436a19b276` | ⚠️ Unaudited |
| GRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1337ace33c2b3fc17d85f33dbd0ed73a896148b5` | ⚠️ Unaudited |
| HelloBEP20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 47 deployments: bsc `0x0012578b1d491213ac46757a9df83c080d7f815e`; bsc `0x1873744425b7a73392b32087073f6a51af962ff6`; bsc `0x1dc118ab614cc2cd9dd5df14820270747ba8cbe5`; bsc `0x20c5ada8b7a061dd6f32c715e4d5712491661dcf`; bsc `0x25ca25184f60fd381f4fdce1014d9686f9c7999e`; bsc `0x25f4a012b06b43aff3918acbf0cc113119aea194`; bsc `0x29cb3c788d440b6d308179acdaa6ff5c95b9538a`; bsc `0x2a8b0eaecc0e024029c19f770cd0ad463bd82902`; bsc `0x2e145e8c91258e101ed67959422f6c72e0cb908e`; bsc `0x338a71e78f95ee6b38ed93d6ed58a867ebb3b159`; bsc `0x35b95e8cb69bcf7b8a5232881cb0118563512b21`; bsc `0x4178277ea59925819c9b8e2d728068fb0dba6b73`; bsc `0x4471da67908aba2ef5ebab897a42e5a30f9aef28`; bsc `0x52d0ae12572215f34a2f0066c09e6ed606ba572d`; bsc `0x55c346396a47fd4eea7f6e0267ce93dc32c451cd`; bsc `0x59ee794f24a6078d75d319971aa8439218048184`; bsc `0x618ecbc9a4f5dc90dbbf81ad5a7a6cc03e928a0a`; bsc `0x72bc5467714aacdedd18ce54b12189ac7044465e`; bsc `0x7889aac8c4838fb5f461087b232b5580329d1be2`; bsc `0x7a73f79e8e31b8f213952e25bcfb83fb3d8c5f0f`; bsc `0x85188c1c25afce7c865aff1cf6b8415b179d9408`; bsc `0x8a153282a90bfd41e22c851bbd7caa50746a64b9`; bsc `0x8a422ac703cc27ec72b275c616fc937a799af95a`; bsc `0x8df5ad095670a6f9a5ee22c372e09392fe37e851`; bsc `0x90a36b07b3f122009d85a73d4147b7703e54bb5a`; bsc `0xa0debfa7359db7ae3b727f61b4d59122c03f18ff`; bsc `0xa33753afad27079a40a74475e349accb3e0f5102`; bsc `0xa515728dfbc4bcdebd1066e82fb7592d8d2898ca`; bsc `0xb55ed200cc58b42c6ea3fd45c4107ce8e65b3982`; bsc `0xb9744b2e594d4139454e37b992e77202925cd44c`; bsc `0xc4df321b2b5b2c44d7888480d64b5d9fb07940b3`; bsc `0xc5ba36f120febde87c4be46e803e38d6ce901fa0`; bsc `0xca87e0817d78f8efd6ddccef180df319782c8660`; bsc `0xccd131858f64c242fb6a159d7d68b5b9d549edb7`; bsc `0xd1bf81fce995927361d07348ba64a20742a53e81`; bsc `0xd6a6001c3590649745614ca3949e144fe117bbd0`; bsc `0xd9caa959fd9b9c040c2cdd588830987cd357328c`; bsc `0xdb0b17cc19e6e339b6e9b2fb9fc24a2bde53d8a3`; bsc `0xdb2b8d049ed8556bddac230f8e0d1d1929bbe03a`; bsc `0xdefb2efa91e0f8582b662bc74b8fc9d45a6f8f34`; bsc `0xe0f76306830c226b3a8d738285677474a8b5cf1d`; bsc `0xe53df72380ff1699ddf32e8cf270ae82faa40d22`; bsc `0xe89ac398aace518567c23c2d5a40313890f060cf`; bsc `0xe99667a5f7b21ac4d48ab33293fd92ac3ce55975`; bsc `0xeceb4baae16d840f95c9744eeaa9a245d449d0a1`; bsc `0xeed6e6284b66b7494d7cbf4759b7c158e73ba0fd`; bsc `0xf0e3800d2b213d44fe16b9678a914e423c22c062` | ⚠️ Unaudited |
| MagnetRise | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8ee9d3883f3e3502c9f047b86b383f7562b61e6` | ⚠️ Unaudited |
| MarketOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x00b2d45ad41578617914ac6115b0e2d3b4a1f89c`; bsc `0x54f9df5def43b27e85e6e2358d55097a664b23f1`; bsc `0x87d22fe68a56d5517111dad265b819d3ae70ef86`; bsc `0xb4478ced0f52a16749c00368a581d36386bd9c17`; bsc `0xf435a7bd32d999731f7546591b3cc5bd65e49e39` | ⚠️ Unaudited |
| Master | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc853c499c62a251be921e93eb5029926323ee250` | ⚠️ Unaudited |
| Mooniswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x168926cd2b2559c8359a7c0ffd2be7ad56e1f2a4` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x596e48cde23ba55adc2b8b00b4ef472184e2a9e3` | ⚠️ Unaudited |
| PinkMoon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76323cb86a984c9c2a514817fe08c126b8ddbc03` | ⚠️ Unaudited |
| RedPill | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x187d765829b5570c964f4b551d26d5745f9ed916`; bsc `0x385e6fdc0c0e3e9535ef1ee4d9530f2f33344bd6`; bsc `0xf841df29c615c66ebf49aba5feba11c889f64dfb` | ⚠️ Unaudited |
| RPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x486dccaf152b271630216d62c00188f2558f6bec`; bsc `0x7d5de1adc020ff7c837a8931a093efce84752045` | ⚠️ Unaudited |
| SamuraiShiba | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x347c5b51449074c5487cc193459c5babeebcef07` | ⚠️ Unaudited |
| SimpleBEP20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffc85da016e5f307bbcf2e370a11ab5e460fd511` | ⚠️ Unaudited |
| TokenMintERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd43b226d365d8b22ba472afc2fa769b356eb5d47` | ⚠️ Unaudited |
| TokenTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x698cfd0f4536e73a78b4db4478c4a166a7da4f30` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0013ef488d94c782ebac90b15c2b8fdaf6e05629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00dc64a47c57332cec5f241a329836fe185651c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03592ac0d3330558e2c31decea7a1440ef951274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2316565bf3514fa04f64c408c8239260534ba646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ac9449834c7d97331ab33714dff8796fedeb965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d229b764d419318a3cde8635a60b5767283edc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e98d3cdeff617e473091896e8fcc6cc07beb7be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f37d994df06e45060300c62bc798f552edbba5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47f6c1f8e2e3b9df29011dcadac9709abe518d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x484a43bb6e36b05f8de1ef76015f79ad405a4ff3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67cd84321955481edb46609b8e674ce90e1037b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a963c2443fe9c62e14002f61527420d55631ac8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77c0f93bd2284d01f29b6cbd532341ce2bba5460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x850195fa9b02cf699aebe3dd130adf15fb86ee7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x865b9529a995a68ed4dd1d6954d2dbab9afa4b6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96556d9b72e5b863732ac9927ec9e684a1fa102a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ad49877f8341417aaad99c8bc89f46a5a21c480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad59fad2b2a385491c6100c6e0bc29fcc305ca97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2e4be5b02e7416c785d5339be84af796b0814ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8c6dd054dbaa327ebb4c2fe316108749e3616a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce80ab50fca1564426ca09a977b029377c50c909` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd364ccc37a8164df7f1ca55cf6344d2cb1a73ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9aec59d19946af1f8ca2e8f50cc9a387a32c140` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdde9e8d669115542eff4923c647c53b46c1735f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6301ced853e236730e71be5b9aea5c4b32f24ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed774911485ede27f1fbc8daed473beb7397b51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedf0a409f0514bd16d8a245bac0a024723401548` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DeepLock.pdf (also discovered via alternate URL)](https://web.archive.org/web/20210623162512/https://github.com/TechRate/Smart-Contract-Audits/blob/main/DeepLock.pdf) | TechRate | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21321] DeepLock.pdf — no match: The report mentions two BSCScan URLs but does not provide contract names or file paths. The audit date is inferred from 'March, 2021' as the last day of the month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 27 |

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

- [21321] DeepLock.pdf

Fork inheritance lineage and inherited audits are included when available.
