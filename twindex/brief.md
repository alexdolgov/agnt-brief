# Agentic Audit Brief: Twindex

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

- Project: Twindex (`twindex`)
- Website: [https://twindex.com/](https://twindex.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc
- Contract surface: 295 unique implementations (295 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $122,718.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Twindex in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 294 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 251
- Unique implementations: 295
- Raw deployments: 295
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitraryCaller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174293 | `0x9351ba792bef34c160c96d1b786702997b552729` | ⚠️ Unaudited |
| CollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174284 | `0x34c885413e025134a2f120f06e523c91d775b7a3` | ⚠️ Unaudited |
| ConvertDopple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174296 | `0xb762a7f6a560a3e8983fbb2b417c9dac9abcaf96` | ⚠️ Unaudited |
| ConvertTwin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174287 | `0x6320f0c37f271f442d0ba4aa6478741618a67ce9` | ⚠️ Unaudited |
| CustomOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174292 | `0x90ed83a3345c32c78ed17328b46124fc118987c6` | ⚠️ Unaudited |
| dfiProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174310 | `0x37f5a7d8bbb1cc0307985d00de520fe30630790c` | ⚠️ Unaudited |
| DiamondHandInitializable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174276 | `0x182a11f9cc9cd3cd7c5ad38131cf1902ccfd3615` | ⚠️ Unaudited |
| DoppleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174283 | `0x2acec0231e55086f6304e4c1e6eacf4eaec5b753` | ⚠️ Unaudited |
| DoppleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174291 | `0x844fa82f1e54824655470970f7004dd90546bb28` | ⚠️ Unaudited |
| DoppleX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174273 | `0x10667943e27caabd3f9584c4e5a49ec799a1476f` | ⚠️ Unaudited |
| FairLaunch | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174301 | `0xda0a175960007b0919dbf11a38e6ec52896bddbe` | ⚠️ Unaudited |
| InternalOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174294 | `0xa442c34d88f4091880aeee16500b088306562caa` | ⚠️ Unaudited |
| KUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174288 | `0x67772fddc88906f42a34bc3fc70c3faccecf24ad` | ⚠️ Unaudited |
| LoanOpenings | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174298 | `0xcd72c5e1e93e32bbdf8d6ac7ee45f8585a3a2641` | ⚠️ Unaudited |
| LoanTokenLogicStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174305 | `0x066888951a12e0b7fbc20ecf273075c3b7ee3db2` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174279 | `0x22a5c7376c76d2d7ddc88d314912217b20d6eec0` | ⚠️ Unaudited |
| MathUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174270 | `0x03f441d8ba0271182c17e148304f78b685fb4da3` | ⚠️ Unaudited |
| OneClickMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174277 | `0x191069dc5277491b35420ebab060d812196c2bda` | ⚠️ Unaudited |
| PriceFeeds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174300 | `0xd4f061a6a276f8b0ae83d210d838b45fcc7532b2` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174269 | `0x03b01bdaf22c5c88cddcce0f2ac90816f6faa824` | ⚠️ Unaudited |
| ReserveTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174290 | `0x6b564654f05bcfbc5bd4e196ec13e60351ea4c41` | ⚠️ Unaudited |
| Shield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174295 | `0xad8f26f6ec78c9b74316dae97ea51ea1a7da423c` | ⚠️ Unaudited |
| StableCollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174281 | `0x25fceb9ad87c92a303acf1bf3017f3911b6d4433` | ⚠️ Unaudited |
| StablePoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174278 | `0x220110ca8be439bd3cf26457d59e533b78dd0764` | ⚠️ Unaudited |
| StableReserveTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174286 | `0x3bbc4459ff92e151a8d30766bc68c6d5b2119377` | ⚠️ Unaudited |
| StockToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174274 | `0x1085b90544ff5c421d528aaf79cc65afc920ac79` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174271 | `0x0473fbfd8167c8b6d29b1251578559e416bcb3e3` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174275 | `0x1433feaa56b14b0572abedec92104c34b1fb6103` | ⚠️ Unaudited |
| Synth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174268 | `0x00378b795bbd3c71084824ac3ee1fa00f5a069fb` | ⚠️ Unaudited |
| SyntheticPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174267 | `0x00280bd0c89981d62dd203751e748a1cf293c384` | ⚠️ Unaudited |
| TempStablePoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174297 | `0xbb0bb9037e9553b52067b7f05d9eee3b2e97d12b` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174302 | `0xfec395fca3bef636d9f97fc6802e4a4726ae43ad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174272 | `0x0cb11d493639f2f1f04ff446c818370d3f839436` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174304 | `0x119f532cb61f1b91abd4ca483c506f5f38e13e13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174306 | `0x127a2b14f5604ba07a34d44b3b0b15333a7eaab0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174308 | `0x262d5f3b45392c579f1afd543d595079e40a50fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174303 | `0x41171d5770c4c68686d1af042ada88a45b02f82b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174307 | `0x6e35511a42ee50b154ee02e5b87549171a9adcd9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | unit-174309 | `0x72c5b38fcd7119ca1346c353709352109f4ce0df` | ⚠️ Unaudited |
| TwindexALPACAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174299 | `0xcd8a5b31fe75130149039bcfa771d115229da679` | ⚠️ Unaudited |
| TwindexBetaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174282 | `0x286a1ef03d2d7bb6d80c6558790a3ced9108b393` | ⚠️ Unaudited |
| TwindexFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174280 | `0x230b496bd8d304a93aa9efa4712fe7e65646bbef` | ⚠️ Unaudited |
| TwindexSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174289 | `0x6b011d0d53b0da6ace2a3f436fd197a4e35f47ef` | ⚠️ Unaudited |
| TwinToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | unit-174285 | `0x3806aae953a3a873d02595f76c7698a57d4c7a57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (251)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00a501d01df1df33a5a547f4a2af1ed83f13dc01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02b2a1b9e1cf536c45a14966d389d6b171bb330c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02ef33dc339c5a4ee42078d5dae8919eb975ba23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05e8766d04a226017357e10c6d6c47c8b2641685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0833245d347eb8e06f95044c8b227652f4608d22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x08422f6cc26ccda692a36a73a520da6b0e6d3de3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08636f62cdcaa1d61a6d801feab280bba00a6a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bcfb3368a77036a6771f33038bbfb368c47e6fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cf9f406a2d0cb37e0060628a645996a93affcc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e494986fe1075136e27ebf0c94e28925d4bd877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e86474442137ea6e226b309baef63c8ac388e11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fc537c345b9413febe01ce4cadc03d6e7d156dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fec9c00e0f2192d040564d2387e3f6eab39d1a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x124cbca86892d7324280bc003bb6cdbf91f61ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x127eaad7a716c732b542d5a68a0ce8ffb4b0e690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1380bc492fdf3b57638ee6fbd298c08f8ec5cb8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13bee7c0719d2c46a20e372af71fc932165f9eed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13d883b2aa6621b3f74ee40956a60c7922153488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14ff5191e9ae378909c3a0c76adbf0f5348060e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1584e0e7883eebe1baa1d0ff9e2f004b262a1514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17ace02e5c8814bf2ee9eaaff7902d52c15fb0f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x185dc392850b77bc77e50c39497e07788bc5efea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d7256e4e4868926171ac49142d55d883c9ff398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1db194c828e6aa4d958dc229d510e958f7740940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1e6cd4e294da62e9b05d4acf919a51e6f94109d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x215b3616730020a7f3e075526588d0cdaa057dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x275f7f4cf387abf217d6eff2adbf0a46305df20e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2832ff4b81293d2b21d18747213569a97936d34d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2916fc2a91783725bd2b2a22a16ff0de6dee4d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x29f83bca8621c296aed0fe53cc697cbe3f673184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2addd90144512c001b5943651cc90e2f7c29a91d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bc0a06a9808275c68a04eee502ab02c73080a1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d640a260a180eeec7f76736eff8dea6a1487a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d87e75efbfe3ca72d823f0032ae2886218b9881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eade35c49f3f1e041576ace336f5a58c0ad8968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30b0f547fb7699f3e51293da3d128fbc1bb31a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x322d22419ded679b5cacdfcc0a087cf9925437ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32c7c6bbca3685a5dc744519fb764d1810149b43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x336483a5f1451fed05bed90f1e835f1f674b3a63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x350219c3496c53e8813e014915735f7ee51edc63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3654b85541038fdb27163b35ddcdd21c212e27e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36e04b29169313d93a056289109ba8a8291e69ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3727dbe0099f96f1daa736e053f0549574022da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x397cc5f9f6f2da1bfcf8374792c0ea45c99d26cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b7b30b043c98ddc877c81cbd8a4eb00fb7ef9c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b8afe441f9b289a4b21345d71ad5eb5baedfe4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d379d3f021c36173c14a0a77923ee6fa0cd0b0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dbc1e094716d57dd9a246797138a46fb01bb3e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f19abbc5c3eb0c62c20e9a17e9c2d358d148097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x40ea52769ffaba9a171d83f9f34972058314f223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41142f7016cfa8523bc2b9b0de920d94003ce8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41461ac5599517b0874c599c34827ccc1846b2f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4189252efe73df86ba68d02411120eb0d2f1d97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41f6b4eee43c4542baeedff0f46fddac3aa22eb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42eebaaad32a1844ae9a00e8ef08f753c7c1f80f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43abdc46b14de7c96ea46bf1fc670ddce9863f3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44172a62e396f25464eddadbe3fc47849b50edcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x449256e20ac3ed7f9ae81c2583068f7508d15c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4494636b3d0e91948a35d0e4a93b2800b2af6002` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45069e9632d1b29d16c5e06dc9ed8f33b6abe6db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45d65ac95bfe68264aa2b92dacab0fc06a7030f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48d2854529183e1de3d36e29d437f8f6043ace17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x49de2d6cb31c56fcf0ad5651476484cf29742ba8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a18c52b40195485f86fd1534427cc863b15e82b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a2b81ecf4124b8c168fe2488fea89439b782b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b23c812efcd668e431dfc7e4fe074499fe80916` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4ba7c645b2685d4edfb9c22da9ab48b53f7bb109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4cb5a5db645990b7f8964a4b73122c24ab5a64b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d01f2064664bd4f078ba58a394c384f7ffc4b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e66fda7820c53c1a2f601f84918c375205eac3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f31f2cf09e87ecbd77fe9e251841c7467d425e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x514d6ee1de83d4c0921f907e9269aed6fd4d5d6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5162f992edf7101637446ecccd5943a9dcc63a8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51d67692b99737ee3f72a3297981a0310ec7fa8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x558b2a53967a21aa8a76e3b322a5a0171054421e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59a40d1f67b9c819a680cabef237030e482550fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b032b3c1ea40a5240d65046b670964bfcbebf30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b3d1f131ef28160f4eaf3f57dd50384a4630b9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5b67badfe3d0a611174d394ab0fccff9fd44424b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d426189e7bc76b52b1db420b8fbda30d0bd7b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5dae0803ee28fe9dca874361b085d559c28d06bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x613ddf4118e689373de29e5a87b330bc8f071fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x61f864a7dfe66cc818a4fd0baabe845323d70454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6212de78f56afcb994427290d92e74e8dad805b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x624a9118e892aaf904a2dff541141630c411a7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x639d20a6fc7133cec8332dfb8124e2b919d23cbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66658c6fbb0b82e07df9eb5a0a56059038bc0aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x675cd20e561a881d91a086650498c82ab7f23c3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x677dc1955e3258a587565de077543ca23db83d91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x67b46cdaa1d661aa46349ea724881aa16f1d82c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x683631037763246350bd089c0d60576c1adc1425` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x69fd0bdbbac3d6b909b6dcb1aa79615ec89d3748` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a1eea4ae450184071830b4a3853e434163e9437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b796aef69907ae512cc4407d0088497c0f03c58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bcf2c74af61a2183cbf921cbd946262713241a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6bd3272eb1fc9949d3e0a50a059a4f6006b47e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c783786135ff14d6ec79a9b65d23a9921e39195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e0c17f56d0d97f83d400a66c508307bce6f8e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6eaf575e471cff9cc3b798d72807563bd87885f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f0a3c8fe1d09d1659340e07d556c667f1423054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6f6c2b4e9d1a0819a2f5678a5ab791df868d11de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7137ccfc7b87b78cb584d3487df3f2cc94ea9388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71bb710ff36d990fbcdaebdd17f25bf86445ce6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x743b1d38c2d0824fd6b5a1171ea599723c713693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x757a62d3bc81c4693f368a36ff28f60a91766ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75bd0500548b49455d2dfd86fa30fba476cb3895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75d5c41a4d98a29d361de657ac5a941a40d32279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76a9ebf68d4a383b57a41a528df51cc89bf8c931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7893a6e23a27f395d74e53bad1dec183215f357f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79584ada27c90ad8bbed5a4562c8ec11355f541d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a9634f6917b9736832f50f4c19b3a231b36f79b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ae31430cf6a308e89fdb8432d5881ec7a05b981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7af28e4782c57a5fe0589bc7b9502186776f1f8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b05ef34f67fa78ecfe058b450124788cee26561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cd562b719fb5abb3ba85a7ff5b7631f2e8be881` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7eab8e29498d4afc83e19600879933e6a68a0f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7fabb3b4ef11e1eace64963f863d349c05e08abd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x802a183ac9f6b082716dfee55432ed0c04acb49a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80a717facec12a54938cc817a86c861140df90bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81eff2701c2e6b67282896fcfb2f62dae94553ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82f11d5f939041e3a48652e9dadf4d765002e52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x830e287ac5947b1c0da865dfb3afd7cdf7900464` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x837c3fa0963c6002ddce30aec44656fc0d2d8bf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83860e0ca079f2ddf708f2c34a2bb32e0a8a8850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85a7faa8be701df9f85f30ad8488cb7e17cfcc96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85b70a8742a08aecbc1e3820f808137fd8a3fb6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x867cade09ba5f2bf923b415dc31f3547eef64e88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x871e24119aab383d0ba8594c800c421b4ab6140e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88093c4a13ad025fc4b9c909394f451e9871bf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89a4aa2e2afaf18273af8f8ef0db877ccff38c47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8bb0facb1f78ce2f53c316eb8e789e7ede2e4d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c0ada8d2694d5a0b9a24761795346d2abf5e398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c62b0dbc7ed3f70770a2efabe97e5e3c3bcd10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8da0124f1e4b6d7a8805bfdf2ad2e056e7f25620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8e5f948e16050da7592f4f7c826eec24ef02c299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91206d4a553a61dc6815f5bfa38e0dcdc1b9f477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x912daf925e790614b2232f735f63e4e081820956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9269d05f824a12a86b9a080a50f0a2c311afda64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92bf3190ac6a886cee2657888edad30aad4f9f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9311b6327cb2a31ca7f1b0bd77cbc9cf9808191f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93736c1f804bcc5b1e2312112202028445941f25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x940ff63e82d15fb47371bfe5a4ed7d7d183de1a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96feb76442c61824a6d5d527c318a95089c0918c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98cffad1c93ceaa9b480656223c8f7af610acd23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98fad9f935f607b7c56ab234fa6df2289bb3aacb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99a4f024878f915291446072be72b5627f86dd7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9aa48b6e2a063d5f4ab1c7c9dfaae1bb2212176e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c169647471c1c6a72773cffc50f6ba285684803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e2c9da72a963eb93d18555352072ee703cb8bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e7f9b84c03601d89908f3fb7cf975f78f52c93a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ee0299b3abc508ab3312ca9c6fdda721c1c6a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f58e3e7a200652c21cc97e517ddffff33d69c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0f22ef29bd51013e8bd0ae438fe74898ba5f070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa12e0c8c81a8a59939d0d78ade2df54c0a3f9910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa275769fb6ff34a1a01c8ce61d0182f5d36ad27a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2de7a8e8ee74dea2092623472a90dcbb5e8bf39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2ebf0e2cb72e30ff5ba75fa8ac41fd920034c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa386bbe81b36ef36cefb5dd9c943ecd41b6acbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3fed679355c5a403669902c1eca077fd85e86c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa42eb58812d8532851b1c64542ebcdd2af455278` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa442ba2cfda879a44e525f7695efeac5745c36aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa45ecfc974ed393096cb15c3786db4a6880ad40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4d1ae66277239bfd5d600b56159bb70d9ac90a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa4d4550accbacbe9e455ea3e28296699a98d69dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5b3d1c4251c864559b6eaa23c4a4caf5133e13c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6b2ae1194631221dc159b342e6a66bfda0800ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa70292c360d400cc57b688e037e6c06986f24b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabaa471a956e75c0e0000f058c1639067ad9c56b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadda315289ce43cec6a3241179ab793e667fc03b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae65e4d3988deeec3994fac35de6003076d9cb8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaedc291cdeddf13054c402b6e34abfd0e74b8e87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb23438b2df9c740df629691caae6c76a9ef86f07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb23dc438b40cdb8a625dc4f249734811f7da9f9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3cae8471196176bbe4f5faa4cef7a9f12927918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb3ce38d9924a38a813fc9de83090cb44d8ddff9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4b40b2fdc2af8c51b534970c24e809a7953f334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4c966db3d0e79037df7cfd190830459d825c100` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5f65d545623f373e943c4afebd32a21cb5a7691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb05493d92a63d0ba995c846d8f3a46bfd94d0e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb88759a121d3561c56d79f8347fbab2b1313eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc42fadcc37994c65a559fb7803ed60d90994e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc48d790041dee37be8aef360466a8ee8bd01efb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcb41906be2c2724a8cd0dec87512b2463535586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbdf8565681458fb36e0003c28b45af70c9cbf3a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe1bfff70082de4c13d295c79bd3a93085e3f8c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf4d8fdd0fddaf249f23dc1acd2e58916fe0af39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc10b2ce6a2bcfdfdc8100ba1602c1689997299d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2567f3102a72b30515bfa379b33788a4033da9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc25ce20d6b94016a26d12cd42da2def16d9f54b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2a5ff81904c6c6de55f59041bf1f402d78e23ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2e162c32d4517c6f954181c60faa68622a532d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc34a4788bd5d1bf501fafe20ce28d49d6bbe7423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc35ac12e8d0ca098752cf4f935947cbb33bd6723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc53cbc3996030019a881f29a4163a6b618e8e8b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6b8988da2abd07453709aba587f774f99aee9c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdc404142f6e3adc12cc2923010213517abc613d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce277e1eafbb77fe8da7c09cfc6a670d6a63b2c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce7ff030963eab53be4f9375d8343f53afdea569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xced683a759f0d6726ce10e3a0c78d69428c5431e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf7c1ba22a8d1c98e91507392a3d9b1e31fdc60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0760d49b2807594912a4f817c729805aae88b65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0ee94607fd79c27b84000110077ff3607393d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0f16da6d0cef05f1d5b883344f5727b57c0ff9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd108bfe791d7d8bd117b750227de89d0f7056b8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd20f2536bd800456003deaa145ddd80a34f5698a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6a3ee191344b341aa951995db4cd23b58701e86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd8db618350b42377af5bd9e8dd7befd321ad4dd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda0991eb00d4bfca281b56b2a04e78c73a88f40a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda828de4fe05bb33448d7d48f9a150bdbd938517` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdce2868f06853035a01e53ffc7539e22e4a62a58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd3565bd68ef6882657fb17bcd66b436f819ebf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd8d6e31049d11e9c71e6c1bf53386782211004e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddd5f89c5ae31083a947dcacf0d1d3d84b395999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde3cd7cbd9d576b7d92d09a2a42fbfd1730c728a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf3c634d7b5c4a4f6dce889ac6be7f0fcc66ea12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf44098408b4cf5f123e78e0dce802f72ba2e557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe025fc1a43c28c3ade6af5894ceed5f7ff16d69e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1b3fbb697c3f42af8b88120e8b740d015488349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe2c7a6373f3ad6177146b390e9b019ff2e221de0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe41e6d40d07b482a9b9647bc2f74dc87e877ae4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4e16b01ac34da7111af90a69b96e23ba9fadde4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5c6f708667ad20b3927c4d6d508660bb8c878f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6bdc009c62a455e2dd1be1b21edf252032e1c51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6be78800f25ffae4d1db7ca6d3485629bd200ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8bccba470857fd923e7f77f4f75e439a2f8f804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea6596e06d944660f374c09ae34144a231d19f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec18b28d9582bb4565c3a339765e2a34542883b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xec8cb13619a1895ac7d50ad3c51eb0b45478f88a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecb53979fc5e59df1275fd27fad0f76ad7156c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xef6e46fded5b9dc939ef83f524ef9f2888077333` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2018b59f8f9be020c12cb0a2624200d9fba2af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2218acf016f7e1948129ae04cad22a4f02b1809` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf278888d8511f8656d3ee0195d53b8c0e25e8cb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf331362ee841381846ad4fe6a77b3891eaccd8a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf38eb70ccfaf6273b31605cfc714053d6816f415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3b39079f29f1dd131142a14d35977f588e3988e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf54b275df3c209225c128ba45bc72f32049886c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf78ece7782f21f8df46aa0d14ff9d3029bd416ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7956da0f11871b4baa7f92ee461b6e810d0832c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7ab2044e41755c844c95ffc059c6d97c0c49954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7cbcd741e4dc94467215292e6e6ed91d519ed1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf89e68c176282095030401e86ba36a36f94cc08c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8af8659a2af27d65bb3e705f0e97b321886031d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8f451a3173ed17d1707165d9fe46a16010a37a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8f6091deceac24d97b804fdcff0d0c1269e2a71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb8447b43a3d1b8eed3e6f18ad4ade37b5a7f352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfbbd39b0c1b48c999d5e73f2cf269b5d68ea31b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc3fadaeccc4ed621d88279a7f74d2f2bafce131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe0c09c2b39973f338e67ca803374878c4ead912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe5086447a2622a2c20faf2d2d3e3986a517eb70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfec2c2cc6cac9445153bbe00df77251ff332e77b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 250
- Live contracts: 0
- Unknown liveness contracts: 250
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=250

Showing first 200 of 250 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x00a501d01df1df33a5a547f4a2af1ed83f13dc01` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x02b2a1b9e1cf536c45a14966d389d6b171bb330c` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x02ef33dc339c5a4ee42078d5dae8919eb975ba23` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x05e8766d04a226017357e10c6d6c47c8b2641685` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0833245d347eb8e06f95044c8b227652f4608d22` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x08636f62cdcaa1d61a6d801feab280bba00a6a25` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0bcfb3368a77036a6771f33038bbfb368c47e6fb` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0cf9f406a2d0cb37e0060628a645996a93affcc1` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0e494986fe1075136e27ebf0c94e28925d4bd877` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0e86474442137ea6e226b309baef63c8ac388e11` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0fc537c345b9413febe01ce4cadc03d6e7d156dd` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0fec9c00e0f2192d040564d2387e3f6eab39d1a3` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x124cbca86892d7324280bc003bb6cdbf91f61ca6` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x127eaad7a716c732b542d5a68a0ce8ffb4b0e690` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1380bc492fdf3b57638ee6fbd298c08f8ec5cb8f` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x13bee7c0719d2c46a20e372af71fc932165f9eed` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x13d883b2aa6621b3f74ee40956a60c7922153488` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x14ff5191e9ae378909c3a0c76adbf0f5348060e8` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1584e0e7883eebe1baa1d0ff9e2f004b262a1514` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x17ace02e5c8814bf2ee9eaaff7902d52c15fb0f4` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x185dc392850b77bc77e50c39497e07788bc5efea` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1d7256e4e4868926171ac49142d55d883c9ff398` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1db194c828e6aa4d958dc229d510e958f7740940` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1e6cd4e294da62e9b05d4acf919a51e6f94109d9` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x215b3616730020a7f3e075526588d0cdaa057dca` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x275f7f4cf387abf217d6eff2adbf0a46305df20e` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2832ff4b81293d2b21d18747213569a97936d34d` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2916fc2a91783725bd2b2a22a16ff0de6dee4d94` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x29f83bca8621c296aed0fe53cc697cbe3f673184` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2addd90144512c001b5943651cc90e2f7c29a91d` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2bc0a06a9808275c68a04eee502ab02c73080a1c` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2d640a260a180eeec7f76736eff8dea6a1487a70` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2d87e75efbfe3ca72d823f0032ae2886218b9881` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2eade35c49f3f1e041576ace336f5a58c0ad8968` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x30b0f547fb7699f3e51293da3d128fbc1bb31a11` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x322d22419ded679b5cacdfcc0a087cf9925437ce` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x32c7c6bbca3685a5dc744519fb764d1810149b43` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x336483a5f1451fed05bed90f1e835f1f674b3a63` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x350219c3496c53e8813e014915735f7ee51edc63` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3654b85541038fdb27163b35ddcdd21c212e27e2` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x36e04b29169313d93a056289109ba8a8291e69ab` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3727dbe0099f96f1daa736e053f0549574022da2` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x397cc5f9f6f2da1bfcf8374792c0ea45c99d26cb` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3b7b30b043c98ddc877c81cbd8a4eb00fb7ef9c8` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3b8afe441f9b289a4b21345d71ad5eb5baedfe4c` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3d379d3f021c36173c14a0a77923ee6fa0cd0b0f` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3dbc1e094716d57dd9a246797138a46fb01bb3e7` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3f19abbc5c3eb0c62c20e9a17e9c2d358d148097` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x40ea52769ffaba9a171d83f9f34972058314f223` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x41142f7016cfa8523bc2b9b0de920d94003ce8a3` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x41461ac5599517b0874c599c34827ccc1846b2f6` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4189252efe73df86ba68d02411120eb0d2f1d97d` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x41f6b4eee43c4542baeedff0f46fddac3aa22eb4` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x42eebaaad32a1844ae9a00e8ef08f753c7c1f80f` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x43abdc46b14de7c96ea46bf1fc670ddce9863f3e` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44172a62e396f25464eddadbe3fc47849b50edcf` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x449256e20ac3ed7f9ae81c2583068f7508d15c02` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4494636b3d0e91948a35d0e4a93b2800b2af6002` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x45069e9632d1b29d16c5e06dc9ed8f33b6abe6db` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x45d65ac95bfe68264aa2b92dacab0fc06a7030f4` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x48d2854529183e1de3d36e29d437f8f6043ace17` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x49de2d6cb31c56fcf0ad5651476484cf29742ba8` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4a18c52b40195485f86fd1534427cc863b15e82b` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4a2b81ecf4124b8c168fe2488fea89439b782b70` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4b23c812efcd668e431dfc7e4fe074499fe80916` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4ba7c645b2685d4edfb9c22da9ab48b53f7bb109` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4cb5a5db645990b7f8964a4b73122c24ab5a64b3` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4d01f2064664bd4f078ba58a394c384f7ffc4b85` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4e66fda7820c53c1a2f601f84918c375205eac3e` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4f31f2cf09e87ecbd77fe9e251841c7467d425e4` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x514d6ee1de83d4c0921f907e9269aed6fd4d5d6b` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5162f992edf7101637446ecccd5943a9dcc63a8a` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x51d67692b99737ee3f72a3297981a0310ec7fa8a` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x558b2a53967a21aa8a76e3b322a5a0171054421e` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x59a40d1f67b9c819a680cabef237030e482550fd` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b032b3c1ea40a5240d65046b670964bfcbebf30` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b3d1f131ef28160f4eaf3f57dd50384a4630b9f` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5b67badfe3d0a611174d394ab0fccff9fd44424b` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5d426189e7bc76b52b1db420b8fbda30d0bd7b11` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x5dae0803ee28fe9dca874361b085d559c28d06bc` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x613ddf4118e689373de29e5a87b330bc8f071fbc` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x61f864a7dfe66cc818a4fd0baabe845323d70454` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6212de78f56afcb994427290d92e74e8dad805b3` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x624a9118e892aaf904a2dff541141630c411a7e9` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x639d20a6fc7133cec8332dfb8124e2b919d23cbc` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x66658c6fbb0b82e07df9eb5a0a56059038bc0aec` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x675cd20e561a881d91a086650498c82ab7f23c3b` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x677dc1955e3258a587565de077543ca23db83d91` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x67b46cdaa1d661aa46349ea724881aa16f1d82c9` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x683631037763246350bd089c0d60576c1adc1425` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x69fd0bdbbac3d6b909b6dcb1aa79615ec89d3748` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6a1eea4ae450184071830b4a3853e434163e9437` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6b796aef69907ae512cc4407d0088497c0f03c58` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6bcf2c74af61a2183cbf921cbd946262713241a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6bd3272eb1fc9949d3e0a50a059a4f6006b47e3f` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6c783786135ff14d6ec79a9b65d23a9921e39195` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e0c17f56d0d97f83d400a66c508307bce6f8e38` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6eaf575e471cff9cc3b798d72807563bd87885f7` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6f0a3c8fe1d09d1659340e07d556c667f1423054` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6f6c2b4e9d1a0819a2f5678a5ab791df868d11de` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7137ccfc7b87b78cb584d3487df3f2cc94ea9388` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x71bb710ff36d990fbcdaebdd17f25bf86445ce6d` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x743b1d38c2d0824fd6b5a1171ea599723c713693` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x757a62d3bc81c4693f368a36ff28f60a91766ca2` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x75bd0500548b49455d2dfd86fa30fba476cb3895` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x75d5c41a4d98a29d361de657ac5a941a40d32279` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x76a9ebf68d4a383b57a41a528df51cc89bf8c931` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7893a6e23a27f395d74e53bad1dec183215f357f` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x79584ada27c90ad8bbed5a4562c8ec11355f541d` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7a9634f6917b9736832f50f4c19b3a231b36f79b` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7ae31430cf6a308e89fdb8432d5881ec7a05b981` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7af28e4782c57a5fe0589bc7b9502186776f1f8d` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7b05ef34f67fa78ecfe058b450124788cee26561` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7cd562b719fb5abb3ba85a7ff5b7631f2e8be881` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7eab8e29498d4afc83e19600879933e6a68a0f09` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7fabb3b4ef11e1eace64963f863d349c05e08abd` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x802a183ac9f6b082716dfee55432ed0c04acb49a` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x80a717facec12a54938cc817a86c861140df90bf` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x81eff2701c2e6b67282896fcfb2f62dae94553ab` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x82f11d5f939041e3a48652e9dadf4d765002e52b` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x830e287ac5947b1c0da865dfb3afd7cdf7900464` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x837c3fa0963c6002ddce30aec44656fc0d2d8bf3` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x83860e0ca079f2ddf708f2c34a2bb32e0a8a8850` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x85a7faa8be701df9f85f30ad8488cb7e17cfcc96` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x85b70a8742a08aecbc1e3820f808137fd8a3fb6d` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x867cade09ba5f2bf923b415dc31f3547eef64e88` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x871e24119aab383d0ba8594c800c421b4ab6140e` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x88093c4a13ad025fc4b9c909394f451e9871bf1b` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x89a4aa2e2afaf18273af8f8ef0db877ccff38c47` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8bb0facb1f78ce2f53c316eb8e789e7ede2e4d8a` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8c0ada8d2694d5a0b9a24761795346d2abf5e398` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8c62b0dbc7ed3f70770a2efabe97e5e3c3bcd10b` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8da0124f1e4b6d7a8805bfdf2ad2e056e7f25620` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x8e5f948e16050da7592f4f7c826eec24ef02c299` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x91206d4a553a61dc6815f5bfa38e0dcdc1b9f477` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x912daf925e790614b2232f735f63e4e081820956` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9269d05f824a12a86b9a080a50f0a2c311afda64` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x92bf3190ac6a886cee2657888edad30aad4f9f82` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9311b6327cb2a31ca7f1b0bd77cbc9cf9808191f` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x93736c1f804bcc5b1e2312112202028445941f25` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x940ff63e82d15fb47371bfe5a4ed7d7d183de1a5` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x96feb76442c61824a6d5d527c318a95089c0918c` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98cffad1c93ceaa9b480656223c8f7af610acd23` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x98fad9f935f607b7c56ab234fa6df2289bb3aacb` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x99a4f024878f915291446072be72b5627f86dd7e` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9aa48b6e2a063d5f4ab1c7c9dfaae1bb2212176e` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9c169647471c1c6a72773cffc50f6ba285684803` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9e2c9da72a963eb93d18555352072ee703cb8bba` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9e7f9b84c03601d89908f3fb7cf975f78f52c93a` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9ee0299b3abc508ab3312ca9c6fdda721c1c6a6d` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9f58e3e7a200652c21cc97e517ddffff33d69c73` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa0f22ef29bd51013e8bd0ae438fe74898ba5f070` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa12e0c8c81a8a59939d0d78ade2df54c0a3f9910` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa275769fb6ff34a1a01c8ce61d0182f5d36ad27a` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa2de7a8e8ee74dea2092623472a90dcbb5e8bf39` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa2ebf0e2cb72e30ff5ba75fa8ac41fd920034c85` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa386bbe81b36ef36cefb5dd9c943ecd41b6acbfa` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa3fed679355c5a403669902c1eca077fd85e86c1` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa42eb58812d8532851b1c64542ebcdd2af455278` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa442ba2cfda879a44e525f7695efeac5745c36aa` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa45ecfc974ed393096cb15c3786db4a6880ad40d` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa4d1ae66277239bfd5d600b56159bb70d9ac90a5` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa4d4550accbacbe9e455ea3e28296699a98d69dd` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa5b3d1c4251c864559b6eaa23c4a4caf5133e13c` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa6b2ae1194631221dc159b342e6a66bfda0800ae` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa70292c360d400cc57b688e037e6c06986f24b05` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xabaa471a956e75c0e0000f058c1639067ad9c56b` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xadda315289ce43cec6a3241179ab793e667fc03b` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xae65e4d3988deeec3994fac35de6003076d9cb8f` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaedc291cdeddf13054c402b6e34abfd0e74b8e87` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb23438b2df9c740df629691caae6c76a9ef86f07` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb23dc438b40cdb8a625dc4f249734811f7da9f9e` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb3cae8471196176bbe4f5faa4cef7a9f12927918` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb3ce38d9924a38a813fc9de83090cb44d8ddff9a` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb4b40b2fdc2af8c51b534970c24e809a7953f334` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb4c966db3d0e79037df7cfd190830459d825c100` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb5f65d545623f373e943c4afebd32a21cb5a7691` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbb05493d92a63d0ba995c846d8f3a46bfd94d0e5` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbb88759a121d3561c56d79f8347fbab2b1313eb9` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbc42fadcc37994c65a559fb7803ed60d90994e9f` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbc48d790041dee37be8aef360466a8ee8bd01efb` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbcb41906be2c2724a8cd0dec87512b2463535586` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbdf8565681458fb36e0003c28b45af70c9cbf3a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbe1bfff70082de4c13d295c79bd3a93085e3f8c8` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xbf4d8fdd0fddaf249f23dc1acd2e58916fe0af39` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc10b2ce6a2bcfdfdc8100ba1602c1689997299d3` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc2567f3102a72b30515bfa379b33788a4033da9a` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc25ce20d6b94016a26d12cd42da2def16d9f54b1` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc2a5ff81904c6c6de55f59041bf1f402d78e23ee` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc2e162c32d4517c6f954181c60faa68622a532d1` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc34a4788bd5d1bf501fafe20ce28d49d6bbe7423` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc35ac12e8d0ca098752cf4f935947cbb33bd6723` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc53cbc3996030019a881f29a4163a6b618e8e8b0` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc6b8988da2abd07453709aba587f774f99aee9c9` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcdc404142f6e3adc12cc2923010213517abc613d` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xce277e1eafbb77fe8da7c09cfc6a670d6a63b2c5` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xce7ff030963eab53be4f9375d8343f53afdea569` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xced683a759f0d6726ce10e3a0c78d69428c5431e` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcf7c1ba22a8d1c98e91507392a3d9b1e31fdc60e` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd0760d49b2807594912a4f817c729805aae88b65` | non_address_book | unknown | unknown | unverified | n/a | `0x5f188439575f7bf21c29e8b7894d9916abeb306d` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/twindex](https://skynet.certik.com/projects/twindex) | CertiK | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21466] skynet.certik.com/projects/twindex — no match: Extracted from audited files list; only two files explicitly named. Audit date from 'Last Audit was delivered on 12/10/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/twindex | MasterChef | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/twindex | Synth | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 251 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [21466] skynet.certik.com/projects/twindex

Fork inheritance lineage and inherited audits are included when available.
