# Agentic Audit Brief: Moonchain

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Moonchain (`moonchain`)
- Website: [https://www.moonchain.com/](https://www.moonchain.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, chain-5167004, ethereum, moonchain
- Contract surface: 71 unique implementations (71 raw deployments)
- Coverage basis: 0/18 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,471,104.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Moonchain. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across arbitrum, arbitrum-sepolia, chain-5167004, ethereum, moonchain. Structural roles: 18 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (18)
- Contract kinds: contract (18)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Automata Dcap Attestation (`0x478932d33a02a14c354c18055afdfc7fb04e1ca5`, chain 42161)
- Bridge (`0x1000777700000000000000000000000000000003`, chain 18686)
- Bridge (`0x4c3924e619e2ee83cfd565c1432cb621ca8af7a0`, chain 42161)
- ERC1155 Vault (`0xac3b2c56c7e98b320b19774ac26a95caea9cb72d`, chain 18686)
- ERC1155 Vault (`0xd6f6b23cd1bfd48ce2ce8b82e527280aa4b53b14`, chain 42161)
- ERC20 Vault (`0x68dfde49a92c9f5c69fe64f62fa8239e931779bd`, chain 18686)
- ERC20 Vault (`0x3160284bc2f4d7f5b170c70a0ee0bc5333c7f39e`, chain 42161)
- ERC721 Vault (`0x523d07ef972991d47e58c1bd4a257e5000ac684a`, chain 18686)
- ERC721 Vault (`0x844c4871fe509c7c1fe26673458533deb96025f8`, chain 42161)
- Eth/Mxc Price Aggregator (`0x0484e645f6287c7ea1b5e4f1f2aadee145cc581e`, chain 18686)
- Eth/Mxc Price Aggregator (`0x7f3c0e4f215dc8caa30e2072b6e47f61d8a57811`, chain 42161)
- Guardian Prover (`0xcd1e1671ce6eb304c2d30ed77885be1b0bf96ad6`, chain 42161)
- Guardian Prover Minority (`0xb6f0d291b118f9f562d4db388351faf62a99c921`, chain 42161)
- MXC L1 (`0x54d8864e8855a7b66ee42b8f2eaa0f2e06bd641a`, chain 42161)
- MXC L2 (`0x1000777700000000000000000000000000000001`, chain 18686)
- MXC Token (`0xaedf7656fbb47c5b97dd529ac1d0e807e051f2dd`, chain 42161)
- Prover Set (`0x817bdf595d88e5b0165993e4a6af04f092584fb7`, chain 42161)
- Rollup Address Manager (`0x1000777700000000000000000000000000000006`, chain 18686)
- Rollup Address Manager (`0xf5146a105d14bda41b866cad0f96b8ce3a4f19df`, chain 42161)
- Shared Address Manager (`0x2000777700000000000000000000000000000002`, chain 18686)
- Shared Address Manager (`0xe7623fc10ecda172a023d64f4cebc1682f84bb26`, chain 42161)
- SignalService (`0x1000777700000000000000000000000000000007`, chain 18686)
- SignalService (`0xb31ebab3ac38b9b021cce679b4059b790413fa4e`, chain 42161)
- Staking (`0x8fd1604e79a35189b02242be68bdbce5a041a1c4`, chain 42161)
- Tier SGX (`0xecdd613ab8e307f8a403fc7a00b8c609b1ef22be`, chain 42161)
- Tier ZKVM RISC0 (`0x4a5c01e22c60d8189419f6ae7f6d47b1e470fc5b`, chain 42161)
- Tier ZKVM SP1 (`0xaf7bb4d74bdf6a44b1c6c9fed3a6606f8943064d`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/71 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/18 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 44 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (7 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 27 of 71 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 71
- Raw deployments: 71
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

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Automata Dcap Attestation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389190 | `0x478932d33a02a14c354c18055afdfc7fb04e1ca5` | ⚠️ Unaudited |
| Bridge | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389192 | `0x4c3924e619e2ee83cfd565c1432cb621ca8af7a0` | ⚠️ Unaudited |
| ERC1155 Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389203 | `0xd6f6b23cd1bfd48ce2ce8b82e527280aa4b53b14` | ⚠️ Unaudited |
| ERC20 Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389189 | `0x3160284bc2f4d7f5b170c70a0ee0bc5333c7f39e` | ⚠️ Unaudited |
| ERC721 Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389196 | `0x844c4871fe509c7c1fe26673458533deb96025f8` | ⚠️ Unaudited |
| Eth/Mxc Price Aggregator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389194 | `0x7f3c0e4f215dc8caa30e2072b6e47f61d8a57811` | ⚠️ Unaudited |
| Guardian Prover | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389202 | `0xcd1e1671ce6eb304c2d30ed77885be1b0bf96ad6` | ⚠️ Unaudited |
| Guardian Prover Minority | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389201 | `0xb6f0d291b118f9f562d4db388351faf62a99c921` | ⚠️ Unaudited |
| MXC L1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389193 | `0x54d8864e8855a7b66ee42b8f2eaa0f2e06bd641a` | ⚠️ Unaudited |
| MXC Token | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389198 | `0xaedf7656fbb47c5b97dd529ac1d0e807e051f2dd` | ⚠️ Unaudited |
| Prover Set | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389195 | `0x817bdf595d88e5b0165993e4a6af04f092584fb7` | ⚠️ Unaudited |
| Rollup Address Manager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389206 | `0xf5146a105d14bda41b866cad0f96b8ce3a4f19df` | ⚠️ Unaudited |
| Shared Address Manager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389204 | `0xe7623fc10ecda172a023d64f4cebc1682f84bb26` | ⚠️ Unaudited |
| SignalService | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389200 | `0xb31ebab3ac38b9b021cce679b4059b790413fa4e` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389197 | `0x8fd1604e79a35189b02242be68bdbce5a041a1c4` | ⚠️ Unaudited |
| Tier SGX | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389205 | `0xecdd613ab8e307f8a403fc7a00b8c609b1ef22be` | ⚠️ Unaudited |
| Tier ZKVM RISC0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389191 | `0x4a5c01e22c60d8189419f6ae7f6d47b1e470fc5b` | ⚠️ Unaudited |
| Tier ZKVM SP1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389199 | `0xaf7bb4d74bdf6a44b1c6c9fed3a6606f8943064d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bridge | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389182 | `0x1000777700000000000000000000000000000003` | ❓ Unverified |
| ERC1155 Vault | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389188 | `0xac3b2c56c7e98b320b19774ac26a95caea9cb72d` | ❓ Unverified |
| ERC20 Vault | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389187 | `0x68dfde49a92c9f5c69fe64f62fa8239e931779bd` | ❓ Unverified |
| ERC721 Vault | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389186 | `0x523d07ef972991d47e58c1bd4a257e5000ac684a` | ❓ Unverified |
| Eth/Mxc Price Aggregator | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389180 | `0x0484e645f6287c7ea1b5e4f1f2aadee145cc581e` | ❓ Unverified |
| MXC L2 | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389181 | `0x1000777700000000000000000000000000000001` | ❓ Unverified |
| Rollup Address Manager | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389183 | `0x1000777700000000000000000000000000000006` | ❓ Unverified |
| Shared Address Manager | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389185 | `0x2000777700000000000000000000000000000002` | ❓ Unverified |
| SignalService | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389184 | `0x1000777700000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-389179 | `0x5ca381bbfb58f0092df149bd3d243b08b9a8386e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389207 | `0x103ff2e2dfd9d5a163b652d8a913a4b0ca0acbbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389208 | `0x18460557d2c8b12a3c6ecc58daa0f19000a12b28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389209 | `0x35c0b3f24235b7de65cdac389fdf8e90684f0748` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389210 | `0x3d199603e63c61256e1a7aac3dbe5a20c7a1beb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389211 | `0x3e0c0dab767fe8ba386175f0d4c92d45a1a6a4df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389212 | `0x425cb065f0f0e1bbf3fcb7fd5c4a0c94248863a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389213 | `0x5e453d54f7783446bb206b261a4bffb24859512f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum-sepolia | unit-389214 | `0x6a5c9e342d5fb5f5ef8a799f0caab2678c939b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389215 | `0x6c7a4c797ada9bd706f376cf64f8c7f8163e4262` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389216 | `0x730ae731edcfdb31a22eca2b72242dc072d36336` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389217 | `0x7ff12ac8385e67970ebb8aeac6c42c133e690649` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389218 | `0x8687d9034d4e6a12d2f91db6ff27fb2cab5979d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389219 | `0x8cfc40cfe94ef106ceec7d0c97e4f02af99954a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389220 | `0x8fd1604e79a35189b02242be68bdbce5a041a1c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389221 | `0xa51c5da59af39a7c18134a0cf497c70157c49476` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389222 | `0xd3343e8162bb51b52884b130439166e3dce8851f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389223 | `0xf08b17b181b3452d683e0ff64268686d8116ea61` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389224 | `0x0d589f5eedf70e17f053cbb93760db7e418603f6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389225 | `0x1000777700000000000000000000000000000001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389226 | `0x1000777700000000000000000000000000000002` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389227 | `0x1000777700000000000000000000000000000003` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389228 | `0x1000777700000000000000000000000000000004` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389229 | `0x1000777700000000000000000000000000000006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389230 | `0x1000777700000000000000000000000000000007` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389231 | `0x1736fe85010313251a99a66f8600e817ac4ae126` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389232 | `0x1964f08f56b79051fb3ae9a2c4d8d92a059b1237` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389233 | `0x2000777700000000000000000000000000000001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389234 | `0x2c9f59e23ca28bbd4dfdbdbada7a09ed47bdcc92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389235 | `0x39c47d083364b4a23d085c7945fac9d42457d8c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389236 | `0x4a857d3adff611dc87593a82d1129bac1cf2eb1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389237 | `0x52f60448790e485f38f2aa9c867cd0dd647c0b73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389238 | `0x5858bb637a3a2b76ed64c9d71db7708a57b6cc03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389239 | `0x6c2660e11f64a404fb5023abe668799dcf899d09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389240 | `0x727a7734afbb01c20681cdd4f68b98f53ddd521b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389241 | `0x88ac471c3c020a5c3bd16ec6756eed81dc2c8e54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389242 | `0x96adb4c80f6c934a20303d4b88f935f967299d5e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389243 | `0x98b114269c2635ff2cb03f0526feb246d1082b4c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389244 | `0xa5c0d0d32b41473c581a979deab01651d1f5eff5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389245 | `0xce27f14c4f1be9d0b4489e4b62c9809e20534e70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389246 | `0xd9eec15002ff7467a6841edf6ea2d1048babc7c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389247 | `0xebfd054c5610f53ce7ca04791bb245a422a528db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389248 | `0xef4c00668a22a3c95f98a5d7468773f98c8c431b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389249 | `0xf01eceed6319423bcc953889cb8f35e7084df1df` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
