# Agentic Audit Brief: Dopple Finance

## Project Overview

- Project: Dopple Finance (`dopple-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.217Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 44 unique implementations (44 raw deployments)
- DeFi Llama TVL: $162,737.80
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 43 project-authored contract(s) across 1 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 10 common project-authored base contract(s) (upgradeableproxy, proxy, state). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 44; live-surface contracts included: 44 (44 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/36 (0.0%)
- Deployed-live implementations: 44 of 44 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 44
- Raw deployments: 44
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbitraryCaller | unknown | bsc | n/a | [`0x9351ba792bef34c160c96d1b786702997b552729`](./contracts/bsc-56/0x9351ba792bef34c160c96d1b786702997b552729/) | ⚠️ Unaudited |
| CollateralReserve | unknown | bsc | n/a | [`0x34c885413e025134a2f120f06e523c91d775b7a3`](./contracts/bsc-56/0x34c885413e025134a2f120f06e523c91d775b7a3/) | ⚠️ Unaudited |
| ConvertDopple | unknown | bsc | n/a | [`0xb762a7f6a560a3e8983fbb2b417c9dac9abcaf96`](./contracts/bsc-56/0xb762a7f6a560a3e8983fbb2b417c9dac9abcaf96/) | ⚠️ Unaudited |
| ConvertTwin | unknown | bsc | n/a | [`0x6320f0c37f271f442d0ba4aa6478741618a67ce9`](./contracts/bsc-56/0x6320f0c37f271f442d0ba4aa6478741618a67ce9/) | ⚠️ Unaudited |
| CustomOracle | unknown | bsc | n/a | [`0x90ed83a3345c32c78ed17328b46124fc118987c6`](./contracts/bsc-56/0x90ed83a3345c32c78ed17328b46124fc118987c6/) | ⚠️ Unaudited |
| dfiProtocol | unknown | bsc | n/a | [`0x37f5a7d8bbb1cc0307985d00de520fe30630790c`](./contracts/bsc-56/0x37f5a7d8bbb1cc0307985d00de520fe30630790c/) | ⚠️ Unaudited |
| DiamondHandInitializable | unknown | bsc | n/a | [`0x182a11f9cc9cd3cd7c5ad38131cf1902ccfd3615`](./contracts/bsc-56/0x182a11f9cc9cd3cd7c5ad38131cf1902ccfd3615/) | ⚠️ Unaudited |
| DoppleRouter | unknown | bsc | n/a | [`0x2acec0231e55086f6304e4c1e6eacf4eaec5b753`](./contracts/bsc-56/0x2acec0231e55086f6304e4c1e6eacf4eaec5b753/) | ⚠️ Unaudited |
| DoppleToken | unknown | bsc | n/a | [`0x844fa82f1e54824655470970f7004dd90546bb28`](./contracts/bsc-56/0x844fa82f1e54824655470970f7004dd90546bb28/) | ⚠️ Unaudited |
| DoppleX | unknown | bsc | n/a | [`0x10667943e27caabd3f9584c4e5a49ec799a1476f`](./contracts/bsc-56/0x10667943e27caabd3f9584c4e5a49ec799a1476f/) | ⚠️ Unaudited |
| FairLaunch | unknown | bsc | n/a | [`0xda0a175960007b0919dbf11a38e6ec52896bddbe`](./contracts/bsc-56/0xda0a175960007b0919dbf11a38e6ec52896bddbe/) | ⚠️ Unaudited |
| InternalOracle | unknown | bsc | n/a | [`0xa442c34d88f4091880aeee16500b088306562caa`](./contracts/bsc-56/0xa442c34d88f4091880aeee16500b088306562caa/) | ⚠️ Unaudited |
| KUSD | unknown | bsc | n/a | [`0x67772fddc88906f42a34bc3fc70c3faccecf24ad`](./contracts/bsc-56/0x67772fddc88906f42a34bc3fc70c3faccecf24ad/) | ⚠️ Unaudited |
| LoanOpenings | unknown | bsc | n/a | [`0xcd72c5e1e93e32bbdf8d6ac7ee45f8585a3a2641`](./contracts/bsc-56/0xcd72c5e1e93e32bbdf8d6ac7ee45f8585a3a2641/) | ⚠️ Unaudited |
| LoanTokenLogicStandard | unknown | bsc | n/a | [`0x066888951a12e0b7fbc20ecf273075c3b7ee3db2`](./contracts/bsc-56/0x066888951a12e0b7fbc20ecf273075c3b7ee3db2/) | ⚠️ Unaudited |
| MasterChef | unknown | bsc | n/a | [`0x22a5c7376c76d2d7ddc88d314912217b20d6eec0`](./contracts/bsc-56/0x22a5c7376c76d2d7ddc88d314912217b20d6eec0/) | ⚠️ Unaudited |
| MathUtils | unknown | bsc | n/a | [`0x03f441d8ba0271182c17e148304f78b685fb4da3`](./contracts/bsc-56/0x03f441d8ba0271182c17e148304f78b685fb4da3/) | ⚠️ Unaudited |
| OneClickMint | unknown | bsc | n/a | [`0x191069dc5277491b35420ebab060d812196c2bda`](./contracts/bsc-56/0x191069dc5277491b35420ebab060d812196c2bda/) | ⚠️ Unaudited |
| PriceFeeds | unknown | bsc | n/a | [`0xd4f061a6a276f8b0ae83d210d838b45fcc7532b2`](./contracts/bsc-56/0xd4f061a6a276f8b0ae83d210d838b45fcc7532b2/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x03b01bdaf22c5c88cddcce0f2ac90816f6faa824`](./contracts/bsc-56/0x03b01bdaf22c5c88cddcce0f2ac90816f6faa824/) | ⚠️ Unaudited |
| ReserveTracker | unknown | bsc | n/a | [`0x6b564654f05bcfbc5bd4e196ec13e60351ea4c41`](./contracts/bsc-56/0x6b564654f05bcfbc5bd4e196ec13e60351ea4c41/) | ⚠️ Unaudited |
| Shield | unknown | bsc | n/a | [`0xad8f26f6ec78c9b74316dae97ea51ea1a7da423c`](./contracts/bsc-56/0xad8f26f6ec78c9b74316dae97ea51ea1a7da423c/) | ⚠️ Unaudited |
| StableCollateralReserve | unknown | bsc | n/a | [`0x25fceb9ad87c92a303acf1bf3017f3911b6d4433`](./contracts/bsc-56/0x25fceb9ad87c92a303acf1bf3017f3911b6d4433/) | ⚠️ Unaudited |
| StablePoolOracle | unknown | bsc | n/a | [`0x220110ca8be439bd3cf26457d59e533b78dd0764`](./contracts/bsc-56/0x220110ca8be439bd3cf26457d59e533b78dd0764/) | ⚠️ Unaudited |
| StableReserveTracker | unknown | bsc | n/a | [`0x3bbc4459ff92e151a8d30766bc68c6d5b2119377`](./contracts/bsc-56/0x3bbc4459ff92e151a8d30766bc68c6d5b2119377/) | ⚠️ Unaudited |
| StockToken | unknown | bsc | n/a | [`0x1085b90544ff5c421d528aaf79cc65afc920ac79`](./contracts/bsc-56/0x1085b90544ff5c421d528aaf79cc65afc920ac79/) | ⚠️ Unaudited |
| Swap | unknown | bsc | n/a | [`0x0473fbfd8167c8b6d29b1251578559e416bcb3e3`](./contracts/bsc-56/0x0473fbfd8167c8b6d29b1251578559e416bcb3e3/) | ⚠️ Unaudited |
| SwapUtils | unknown | bsc | n/a | [`0x1433feaa56b14b0572abedec92104c34b1fb6103`](./contracts/bsc-56/0x1433feaa56b14b0572abedec92104c34b1fb6103/) | ⚠️ Unaudited |
| Synth | unknown | bsc | n/a | [`0x00378b795bbd3c71084824ac3ee1fa00f5a069fb`](./contracts/bsc-56/0x00378b795bbd3c71084824ac3ee1fa00f5a069fb/) | ⚠️ Unaudited |
| SyntheticPool | unknown | bsc | n/a | [`0x00280bd0c89981d62dd203751e748a1cf293c384`](./contracts/bsc-56/0x00280bd0c89981d62dd203751e748a1cf293c384/) | ⚠️ Unaudited |
| TempStablePoolOracle | unknown | bsc | n/a | [`0xbb0bb9037e9553b52067b7f05d9eee3b2e97d12b`](./contracts/bsc-56/0xbb0bb9037e9553b52067b7f05d9eee3b2e97d12b/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0xfec395fca3bef636d9f97fc6802e4a4726ae43ad`](./contracts/bsc-56/0xfec395fca3bef636d9f97fc6802e4a4726ae43ad/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0cb11d493639f2f1f04ff446c818370d3f839436`](./contracts/bsc-56/0x0cb11d493639f2f1f04ff446c818370d3f839436/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x119f532cb61f1b91abd4ca483c506f5f38e13e13`](./contracts/bsc-56/0x119f532cb61f1b91abd4ca483c506f5f38e13e13/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x127a2b14f5604ba07a34d44b3b0b15333a7eaab0`](./contracts/bsc-56/0x127a2b14f5604ba07a34d44b3b0b15333a7eaab0/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x262d5f3b45392c579f1afd543d595079e40a50fe`](./contracts/bsc-56/0x262d5f3b45392c579f1afd543d595079e40a50fe/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x41171d5770c4c68686d1af042ada88a45b02f82b`](./contracts/bsc-56/0x41171d5770c4c68686d1af042ada88a45b02f82b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x6e35511a42ee50b154ee02e5b87549171a9adcd9`](./contracts/bsc-56/0x6e35511a42ee50b154ee02e5b87549171a9adcd9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x72c5b38fcd7119ca1346c353709352109f4ce0df`](./contracts/bsc-56/0x72c5b38fcd7119ca1346c353709352109f4ce0df/) | ⚠️ Unaudited |
| TwindexALPACAToken | unknown | bsc | n/a | [`0xcd8a5b31fe75130149039bcfa771d115229da679`](./contracts/bsc-56/0xcd8a5b31fe75130149039bcfa771d115229da679/) | ⚠️ Unaudited |
| TwindexBetaToken | unknown | bsc | n/a | [`0x286a1ef03d2d7bb6d80c6558790a3ced9108b393`](./contracts/bsc-56/0x286a1ef03d2d7bb6d80c6558790a3ced9108b393/) | ⚠️ Unaudited |
| TwindexFactory | unknown | bsc | n/a | [`0x230b496bd8d304a93aa9efa4712fe7e65646bbef`](./contracts/bsc-56/0x230b496bd8d304a93aa9efa4712fe7e65646bbef/) | ⚠️ Unaudited |
| TwindexSwapRouter | unknown | bsc | n/a | [`0x6b011d0d53b0da6ace2a3f436fd197a4e35f47ef`](./contracts/bsc-56/0x6b011d0d53b0da6ace2a3f436fd197a4e35f47ef/) | ⚠️ Unaudited |
| TwinToken | unknown | bsc | n/a | [`0x3806aae953a3a873d02595f76c7698a57d4c7a57`](./contracts/bsc-56/0x3806aae953a3a873d02595f76c7698a57d4c7a57/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x9351ba792bef34c160c96d1b786702997b552729`](./contracts/bsc-56/0x9351ba792bef34c160c96d1b786702997b552729/) | ArbitraryCaller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x34c885413e025134a2f120f06e523c91d775b7a3`](./contracts/bsc-56/0x34c885413e025134a2f120f06e523c91d775b7a3/) | CollateralReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb762a7f6a560a3e8983fbb2b417c9dac9abcaf96`](./contracts/bsc-56/0xb762a7f6a560a3e8983fbb2b417c9dac9abcaf96/) | ConvertDopple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6320f0c37f271f442d0ba4aa6478741618a67ce9`](./contracts/bsc-56/0x6320f0c37f271f442d0ba4aa6478741618a67ce9/) | ConvertTwin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x90ed83a3345c32c78ed17328b46124fc118987c6`](./contracts/bsc-56/0x90ed83a3345c32c78ed17328b46124fc118987c6/) | CustomOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x37f5a7d8bbb1cc0307985d00de520fe30630790c`](./contracts/bsc-56/0x37f5a7d8bbb1cc0307985d00de520fe30630790c/) | dfiProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x182a11f9cc9cd3cd7c5ad38131cf1902ccfd3615`](./contracts/bsc-56/0x182a11f9cc9cd3cd7c5ad38131cf1902ccfd3615/) | DiamondHandInitializable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2acec0231e55086f6304e4c1e6eacf4eaec5b753`](./contracts/bsc-56/0x2acec0231e55086f6304e4c1e6eacf4eaec5b753/) | DoppleRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x844fa82f1e54824655470970f7004dd90546bb28`](./contracts/bsc-56/0x844fa82f1e54824655470970f7004dd90546bb28/) | DoppleToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10667943e27caabd3f9584c4e5a49ec799a1476f`](./contracts/bsc-56/0x10667943e27caabd3f9584c4e5a49ec799a1476f/) | DoppleX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xda0a175960007b0919dbf11a38e6ec52896bddbe`](./contracts/bsc-56/0xda0a175960007b0919dbf11a38e6ec52896bddbe/) | FairLaunch | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa442c34d88f4091880aeee16500b088306562caa`](./contracts/bsc-56/0xa442c34d88f4091880aeee16500b088306562caa/) | InternalOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x67772fddc88906f42a34bc3fc70c3faccecf24ad`](./contracts/bsc-56/0x67772fddc88906f42a34bc3fc70c3faccecf24ad/) | KUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcd72c5e1e93e32bbdf8d6ac7ee45f8585a3a2641`](./contracts/bsc-56/0xcd72c5e1e93e32bbdf8d6ac7ee45f8585a3a2641/) | LoanOpenings | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x066888951a12e0b7fbc20ecf273075c3b7ee3db2`](./contracts/bsc-56/0x066888951a12e0b7fbc20ecf273075c3b7ee3db2/) | LoanTokenLogicStandard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x22a5c7376c76d2d7ddc88d314912217b20d6eec0`](./contracts/bsc-56/0x22a5c7376c76d2d7ddc88d314912217b20d6eec0/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x03f441d8ba0271182c17e148304f78b685fb4da3`](./contracts/bsc-56/0x03f441d8ba0271182c17e148304f78b685fb4da3/) | MathUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x191069dc5277491b35420ebab060d812196c2bda`](./contracts/bsc-56/0x191069dc5277491b35420ebab060d812196c2bda/) | OneClickMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd4f061a6a276f8b0ae83d210d838b45fcc7532b2`](./contracts/bsc-56/0xd4f061a6a276f8b0ae83d210d838b45fcc7532b2/) | PriceFeeds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b564654f05bcfbc5bd4e196ec13e60351ea4c41`](./contracts/bsc-56/0x6b564654f05bcfbc5bd4e196ec13e60351ea4c41/) | ReserveTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xad8f26f6ec78c9b74316dae97ea51ea1a7da423c`](./contracts/bsc-56/0xad8f26f6ec78c9b74316dae97ea51ea1a7da423c/) | Shield | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x25fceb9ad87c92a303acf1bf3017f3911b6d4433`](./contracts/bsc-56/0x25fceb9ad87c92a303acf1bf3017f3911b6d4433/) | StableCollateralReserve | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x220110ca8be439bd3cf26457d59e533b78dd0764`](./contracts/bsc-56/0x220110ca8be439bd3cf26457d59e533b78dd0764/) | StablePoolOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3bbc4459ff92e151a8d30766bc68c6d5b2119377`](./contracts/bsc-56/0x3bbc4459ff92e151a8d30766bc68c6d5b2119377/) | StableReserveTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1085b90544ff5c421d528aaf79cc65afc920ac79`](./contracts/bsc-56/0x1085b90544ff5c421d528aaf79cc65afc920ac79/) | StockToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0473fbfd8167c8b6d29b1251578559e416bcb3e3`](./contracts/bsc-56/0x0473fbfd8167c8b6d29b1251578559e416bcb3e3/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1433feaa56b14b0572abedec92104c34b1fb6103`](./contracts/bsc-56/0x1433feaa56b14b0572abedec92104c34b1fb6103/) | SwapUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00378b795bbd3c71084824ac3ee1fa00f5a069fb`](./contracts/bsc-56/0x00378b795bbd3c71084824ac3ee1fa00f5a069fb/) | Synth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x00280bd0c89981d62dd203751e748a1cf293c384`](./contracts/bsc-56/0x00280bd0c89981d62dd203751e748a1cf293c384/) | SyntheticPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xbb0bb9037e9553b52067b7f05d9eee3b2e97d12b`](./contracts/bsc-56/0xbb0bb9037e9553b52067b7f05d9eee3b2e97d12b/) | TempStablePoolOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xfec395fca3bef636d9f97fc6802e4a4726ae43ad`](./contracts/bsc-56/0xfec395fca3bef636d9f97fc6802e4a4726ae43ad/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcd8a5b31fe75130149039bcfa771d115229da679`](./contracts/bsc-56/0xcd8a5b31fe75130149039bcfa771d115229da679/) | TwindexALPACAToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x286a1ef03d2d7bb6d80c6558790a3ced9108b393`](./contracts/bsc-56/0x286a1ef03d2d7bb6d80c6558790a3ced9108b393/) | TwindexBetaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x230b496bd8d304a93aa9efa4712fe7e65646bbef`](./contracts/bsc-56/0x230b496bd8d304a93aa9efa4712fe7e65646bbef/) | TwindexFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6b011d0d53b0da6ace2a3f436fd197a4e35f47ef`](./contracts/bsc-56/0x6b011d0d53b0da6ace2a3f436fd197a4e35f47ef/) | TwindexSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3806aae953a3a873d02595f76c7698a57d4c7a57`](./contracts/bsc-56/0x3806aae953a3a873d02595f76c7698a57d4c7a57/) | TwinToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
