# Agentic Audit Brief: SwissBorg

## Project Overview

- Project: SwissBorg (`swissborg`)
- Website: [https://swissborg.com](https://swissborg.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:58.187Z
- Pipeline run: v2-2026-07-03-59f8b9
- Chains: ethereum
- Contract surface: 62 unique implementations (62 raw deployments)
- DeFi Llama TVL: $746,029,108.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CEX. Structurally: 61 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (assetinterface, returndata). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 62; live-surface contracts included: 62 (62 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/62 (0.0%)
- Deployed-live implementations: 62 of 62 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/62
- Verified + Unaudited implementations: 62
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 62
- Raw deployments: 62
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

### ⚠️ Verified + Unaudited (62)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AIR | unknown | ethereum | n/a | [`0x85a0d3...afc234`](./contracts/ethereum-1/0x85a0d3ff89813f17a968572e28af3d132aafc234/) | ⚠️ Unaudited |
| ArmorCeramics | unknown | ethereum | n/a | [`0x19da36...6f8e60`](./contracts/ethereum-1/0x19da36dcf89327b2cc3d477b97dba499576f8e60/) | ⚠️ Unaudited |
| Asset | unknown | ethereum | n/a | [`0x000b2d...ed87ac`](./contracts/ethereum-1/0x000b2d5a56e8b2eacd8c9d9a6ead8d044fed87ac/) | ⚠️ Unaudited |
| AssetProxy | unknown | ethereum | n/a | [`0x02086c...db1b3a`](./contracts/ethereum-1/0x02086ce6fde7c1adf67140830972a3378bdb1b3a/) | ⚠️ Unaudited |
| AssetWithCompliance | unknown | ethereum | n/a | [`0x2af703...3d3d9c`](./contracts/ethereum-1/0x2af703b86b8ccf30040d82b088b73842573d3d9c/) | ⚠️ Unaudited |
| AssetWithWhitelist | unknown | ethereum | n/a | [`0x0c8f3d...1a4e45`](./contracts/ethereum-1/0x0c8f3d80103181fb6a68229bcb8b410b831a4e45/) | ⚠️ Unaudited |
| Aura | unknown | ethereum | n/a | [`0x49d51a...87e0f9`](./contracts/ethereum-1/0x49d51a0a38706a95ae6129f177bd293e8087e0f9/) | ⚠️ Unaudited |
| AVtest | unknown | ethereum | n/a | [`0x7a16a4...afe846`](./contracts/ethereum-1/0x7a16a48435d90580e9f54ff83b472413dfafe846/) | ⚠️ Unaudited |
| BLOK | unknown | ethereum | n/a | [`0xffc7a6...f952e1`](./contracts/ethereum-1/0xffc7a65176b532db7e1ac26c522ca07123f952e1/) | ⚠️ Unaudited |
| ChsbToBorgMigrator | unknown | ethereum | n/a | [`0x62931e...5e910b`](./contracts/ethereum-1/0x62931ef690876142114ecf5aa52cf0fbbe5e910b/) | ⚠️ Unaudited |
| ChsbToBorgMigratorV2 | unknown | ethereum | n/a | [`0xaa8546...65985a`](./contracts/ethereum-1/0xaa854688caab725fe17b7d21b46fda5af365985a/) | ⚠️ Unaudited |
| Coinoplex | unknown | ethereum | n/a | [`0x567f4f...f82a90`](./contracts/ethereum-1/0x567f4f0b0b5209644c0390f7860c7859b0f82a90/) | ⚠️ Unaudited |
| CREDITCOIN | unknown | ethereum | n/a | [`0x5e51f6...cfbabe`](./contracts/ethereum-1/0x5e51f6841d2f188c42c7c33a6a5e77fb05cfbabe/) | ⚠️ Unaudited |
| CryptallionToken | unknown | ethereum | n/a | [`0x857463...a37681`](./contracts/ethereum-1/0x8574634a96bc7e56847c7df729c8acdbbea37681/) | ⚠️ Unaudited |
| CryptykTokens | unknown | ethereum | n/a | [`0x42a501...3f4063`](./contracts/ethereum-1/0x42a501903afaa1086b5975773375c80e363f4063/) | ⚠️ Unaudited |
| EmphyCoin | unknown | ethereum | n/a | [`0x50ee67...fd590d`](./contracts/ethereum-1/0x50ee674689d75c0f88e8f83cfe8c4b69e8fd590d/) | ⚠️ Unaudited |
| ETERBASE | unknown | ethereum | n/a | [`0x49a1cb...cf1d23`](./contracts/ethereum-1/0x49a1cbb5d28cdedd55b7daa627f658fbd8cf1d23/) | ⚠️ Unaudited |
| FluxCoin | unknown | ethereum | n/a | [`0x282eaf...980c4a`](./contracts/ethereum-1/0x282eaf0c93b535731c1a2ef26a568e6131980c4a/) | ⚠️ Unaudited |
| GLOBO | unknown | ethereum | n/a | [`0x5f3b30...df3d8b`](./contracts/ethereum-1/0x5f3b30ecb4048eca205ce90a93f9949f74df3d8b/) | ⚠️ Unaudited |
| GloboX | unknown | ethereum | n/a | [`0x13eedd...f3d5f9`](./contracts/ethereum-1/0x13eedd9cd79b55719fa1e656fbedc800d7f3d5f9/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x259c44...0230f3`](./contracts/ethereum-1/0x259c444b50e3ab173c4f850bb40d85a9ea0230f3/) | ⚠️ Unaudited |
| HealthCareToken | unknown | ethereum | n/a | [`0x446c90...79406f`](./contracts/ethereum-1/0x446c9033e7516d820cc9a2ce2d0b7328b579406f/) | ⚠️ Unaudited |
| InspeerTest | unknown | ethereum | n/a | [`0xc34e97...1143e2`](./contracts/ethereum-1/0xc34e97712376ec830591e4dfd2efe8a8981143e2/) | ⚠️ Unaudited |
| IOTW | unknown | ethereum | n/a | [`0x4fe327...e61305`](./contracts/ethereum-1/0x4fe327c5a809fa721d47b80c5038a0b393e61305/) | ⚠️ Unaudited |
| K2G | unknown | ethereum | n/a | [`0x926703...7fe6ec`](./contracts/ethereum-1/0x926703fb558f46331b6a06322bcf9e9d017fe6ec/) | ⚠️ Unaudited |
| Mark | unknown | ethereum | n/a | [`0xf453b5...8e8a89`](./contracts/ethereum-1/0xf453b5b9d4e0b5c62ffb256bb2378cc2bc8e8a89/) | ⚠️ Unaudited |
| MarkOwnership | unknown | ethereum | n/a | [`0x0285d3...f62bc9`](./contracts/ethereum-1/0x0285d3178199d95602fe37a6f797e0036af62bc9/) | ⚠️ Unaudited |
| MITIO | unknown | ethereum | n/a | [`0xba4f40...843b7e`](./contracts/ethereum-1/0xba4f403fceda8eb77d95810a7db12399bf843b7e/) | ⚠️ Unaudited |
| MRKOwnership | unknown | ethereum | n/a | [`0x6722b7...1c69fe`](./contracts/ethereum-1/0x6722b7ef27c774f7cacdea9e98a47641521c69fe/) | ⚠️ Unaudited |
| MRVL | unknown | ethereum | n/a | [`0xd10d9a...edeb25`](./contracts/ethereum-1/0xd10d9a35e84c4c04d46938276e40939b2bedeb25/) | ⚠️ Unaudited |
| NttManager | unknown | ethereum | n/a | [`0x66a28b...f6a1e5`](./contracts/ethereum-1/0x66a28b080918184851774a89ab94850a41f6a1e5/) | ⚠️ Unaudited |
| OpenGoodsToken | unknown | ethereum | n/a | [`0x4adbfb...302b80`](./contracts/ethereum-1/0x4adbfb956bdb58e84a700b62a2bd8b4d5a302b80/) | ⚠️ Unaudited |
| OptheriumToken | unknown | ethereum | n/a | [`0x0b34a0...c95630`](./contracts/ethereum-1/0x0b34a04b77aa9bd2c07ef365c05f7d0234c95630/) | ⚠️ Unaudited |
| OrderbookBTC | unknown | ethereum | n/a | [`0x0cbeae...36bd76`](./contracts/ethereum-1/0x0cbeae4005826a63153875d0fbbfe8a91736bd76/) | ⚠️ Unaudited |
| OrderbookPresaleToken | unknown | ethereum | n/a | [`0xb048ba...720848`](./contracts/ethereum-1/0xb048bad454a993537caed5a7917e7c944a720848/) | ⚠️ Unaudited |
| OrderbookProfitShare | unknown | ethereum | n/a | [`0x3fd521...2aab49`](./contracts/ethereum-1/0x3fd5219b7280291dd83beb8baff96d15f22aab49/) | ⚠️ Unaudited |
| OrderbookUSD | unknown | ethereum | n/a | [`0xca075c...8bdf63`](./contracts/ethereum-1/0xca075cf7496d7fee464ceb98ccfbd3b6408bdf63/) | ⚠️ Unaudited |
| PEXToken | unknown | ethereum | n/a | [`0x55c2a0...efc098`](./contracts/ethereum-1/0x55c2a0c171d920843560594de3d6eecc09efc098/) | ⚠️ Unaudited |
| RAISON | unknown | ethereum | n/a | [`0xb0ed9d...2707ee`](./contracts/ethereum-1/0xb0ed9d9495971a23fd5f0b9244b3dbbb402707ee/) | ⚠️ Unaudited |
| RedCat | unknown | ethereum | n/a | [`0xfe056d...bf5d94`](./contracts/ethereum-1/0xfe056d5c08c349beabc0369b79319636b0bf5d94/) | ⚠️ Unaudited |
| REDL | unknown | ethereum | n/a | [`0x90b567...1ea63a`](./contracts/ethereum-1/0x90b567371fbb8f1637d0f41aeee420031b1ea63a/) | ⚠️ Unaudited |
| REMME | unknown | ethereum | n/a | [`0x83984d...f66b6d`](./contracts/ethereum-1/0x83984d6142934bb535793a82adb0a46ef0f66b6d/) | ⚠️ Unaudited |
| Reputy | unknown | ethereum | n/a | [`0x9a5402...364a4c`](./contracts/ethereum-1/0x9a540227a22f99ceb492e3c4935176a1e2364a4c/) | ⚠️ Unaudited |
| RetailGlobalToken | unknown | ethereum | n/a | [`0x55f551...bdb4d5`](./contracts/ethereum-1/0x55f551ea41f7a8025412acbbc26701f968bdb4d5/) | ⚠️ Unaudited |
| SIXAToken | unknown | ethereum | n/a | [`0x6ccc23...c17433`](./contracts/ethereum-1/0x6ccc23875503c5a1cd901b3006bdb5eb84c17433/) | ⚠️ Unaudited |
| SwissBorgToken | unknown | ethereum | n/a | [`0x64d0f5...6f2224`](./contracts/ethereum-1/0x64d0f55cd8c7133a9d7102b13987235f486f2224/) | ⚠️ Unaudited |
| SyncFab | unknown | ethereum | n/a | [`0x6710c6...6c0312`](./contracts/ethereum-1/0x6710c63432a2de02954fc0f851db07146a6c0312/) | ⚠️ Unaudited |
| Terra | unknown | ethereum | n/a | [`0xcaf187...4b07b9`](./contracts/ethereum-1/0xcaf187eb618d2335b4130d784a697be96f4b07b9/) | ⚠️ Unaudited |
| Test | unknown | ethereum | n/a | [`0xc574d5...a84139`](./contracts/ethereum-1/0xc574d5f8f7e79c8a9c1d077be9154131aea84139/) | ⚠️ Unaudited |
| TEST135 | unknown | ethereum | n/a | [`0x537f77...496ddc`](./contracts/ethereum-1/0x537f77a805e81a7072fcb1b365727087b3496ddc/) | ⚠️ Unaudited |
| TestArmorToken | unknown | ethereum | n/a | [`0x584beb...c516c3`](./contracts/ethereum-1/0x584beba37d962edd0fb4b16b10771d146dc516c3/) | ⚠️ Unaudited |
| TheDealCoin | unknown | ethereum | n/a | [`0x8458d4...b241ed`](./contracts/ethereum-1/0x8458d484572ceb89ce70eebbe17dc84707b241ed/) | ⚠️ Unaudited |
| TokenForTelevision | unknown | ethereum | n/a | [`0xa838be...8f9a76`](./contracts/ethereum-1/0xa838be6e4b760e6061d4732d6b9f11bf578f9a76/) | ⚠️ Unaudited |
| TraderStars | unknown | ethereum | n/a | [`0xcdb2f2...a8591d`](./contracts/ethereum-1/0xcdb2f2d5a5483be5dbe56234ca222eb4e1a8591d/) | ⚠️ Unaudited |
| TransceiverStructs | unknown | ethereum | n/a | [`0x4e4044...571f7c`](./contracts/ethereum-1/0x4e404415af8a8a9de725c4f9d3426e79e1571f7c/) | ⚠️ Unaudited |
| TrustMeUpCoin | unknown | ethereum | n/a | [`0x4e7343...f97092`](./contracts/ethereum-1/0x4e734332e8a6ee5ff779f8b7349d6b449ff97092/) | ⚠️ Unaudited |
| UBTFreeze | unknown | ethereum | n/a | [`0xd6b6a6...bb8f53`](./contracts/ethereum-1/0xd6b6a6258a521036dfa4b2c1b8b633ae89bb8f53/) | ⚠️ Unaudited |
| UnicornSPXSecurityToken | unknown | ethereum | n/a | [`0x38d3d9...85aed0`](./contracts/ethereum-1/0x38d3d9abbdba8305ebb8b72996efe55bf785aed0/) | ⚠️ Unaudited |
| VaultbankToken | unknown | ethereum | n/a | [`0xe63ba5...bf09d4`](./contracts/ethereum-1/0xe63ba55d9365ca962ec49d1c0e42a44109bf09d4/) | ⚠️ Unaudited |
| VOLUM | unknown | ethereum | n/a | [`0xf1c460...fa4ecc`](./contracts/ethereum-1/0xf1c460ae47e06be0756f9a1831467ff2f5fa4ecc/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | n/a | [`0x45e581...813ddb`](./contracts/ethereum-1/0x45e581d6841f0a99fc34f70871ef56b353813ddb/) | ⚠️ Unaudited |
| Zichain | unknown | ethereum | n/a | [`0xa48778...17c2b5`](./contracts/ethereum-1/0xa48778849bf4ecee7a9de39e394930787717c2b5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://311270402-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F20eavHG09ovQxEkHaAac%2Fuploads%2Fhp0mS4vGccH5stGdNAhQ%2FSwissborg_SC-Audit-Report_22.08.2023_SA-1552.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 62 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [24525] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
