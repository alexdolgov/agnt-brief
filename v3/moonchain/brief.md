# Agentic Audit Brief: Moonchain

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Moonchain (`moonchain`)
- Website: [https://www.moonchain.com/](https://www.moonchain.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
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

- Automata Dcap Attestation (`0x478932...4e1ca5`, chain 42161)
- Bridge (`0x100077...000003`, chain 18686)
- Bridge (`0x4c3924...8af7a0`, chain 42161)
- ERC1155 Vault (`0xac3b2c...9cb72d`, chain 18686)
- ERC1155 Vault (`0xd6f6b2...b53b14`, chain 42161)
- ERC20 Vault (`0x68dfde...1779bd`, chain 18686)
- ERC20 Vault (`0x316028...c7f39e`, chain 42161)
- ERC721 Vault (`0x523d07...ac684a`, chain 18686)
- ERC721 Vault (`0x844c48...6025f8`, chain 42161)
- Eth/Mxc Price Aggregator (`0x0484e6...cc581e`, chain 18686)
- Eth/Mxc Price Aggregator (`0x7f3c0e...a57811`, chain 42161)
- Guardian Prover (`0xcd1e16...f96ad6`, chain 42161)
- Guardian Prover Minority (`0xb6f0d2...99c921`, chain 42161)
- MXC L1 (`0x54d886...bd641a`, chain 42161)
- MXC L2 (`0x100077...000001`, chain 18686)
- MXC Token (`0xaedf76...51f2dd`, chain 42161)
- Prover Set (`0x817bdf...584fb7`, chain 42161)
- Rollup Address Manager (`0x100077...000006`, chain 18686)
- Rollup Address Manager (`0xf5146a...4f19df`, chain 42161)
- Shared Address Manager (`0x200077...000002`, chain 18686)
- Shared Address Manager (`0xe7623f...84bb26`, chain 42161)
- SignalService (`0x100077...000007`, chain 18686)
- SignalService (`0xb31eba...13fa4e`, chain 42161)
- Staking (`0x8fd160...41a1c4`, chain 42161)
- Tier SGX (`0xecdd61...ef22be`, chain 42161)
- Tier ZKVM RISC0 (`0x4a5c01...70fc5b`, chain 42161)
- Tier ZKVM SP1 (`0xaf7bb4...43064d`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/71 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/18 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 44 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (7 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 27 of 71 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 9
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
| Automata Dcap Attestation | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389190 | `0x478932...4e1ca5` | ⚠️ Unaudited |
| Bridge | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389192 | `0x4c3924...8af7a0` | ⚠️ Unaudited |
| ERC1155 Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389203 | `0xd6f6b2...b53b14` | ⚠️ Unaudited |
| ERC20 Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389189 | `0x316028...c7f39e` | ⚠️ Unaudited |
| ERC721 Vault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389196 | `0x844c48...6025f8` | ⚠️ Unaudited |
| Eth/Mxc Price Aggregator | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389194 | `0x7f3c0e...a57811` | ⚠️ Unaudited |
| Guardian Prover | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389202 | `0xcd1e16...f96ad6` | ⚠️ Unaudited |
| Guardian Prover Minority | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389201 | `0xb6f0d2...99c921` | ⚠️ Unaudited |
| MXC L1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389193 | `0x54d886...bd641a` | ⚠️ Unaudited |
| MXC Token | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389198 | `0xaedf76...51f2dd` | ⚠️ Unaudited |
| Prover Set | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389195 | `0x817bdf...584fb7` | ⚠️ Unaudited |
| Rollup Address Manager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389206 | `0xf5146a...4f19df` | ⚠️ Unaudited |
| Shared Address Manager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389204 | `0xe7623f...84bb26` | ⚠️ Unaudited |
| SignalService | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389200 | `0xb31eba...13fa4e` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389197 | `0x8fd160...41a1c4` | ⚠️ Unaudited |
| Tier SGX | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389205 | `0xecdd61...ef22be` | ⚠️ Unaudited |
| Tier ZKVM RISC0 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389191 | `0x4a5c01...70fc5b` | ⚠️ Unaudited |
| Tier ZKVM SP1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-389199 | `0xaf7bb4...43064d` | ⚠️ Unaudited |

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
| Bridge | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389182 | `0x100077...000003` | ❓ Unverified |
| ERC1155 Vault | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389188 | `0xac3b2c...9cb72d` | ❓ Unverified |
| ERC20 Vault | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389187 | `0x68dfde...1779bd` | ❓ Unverified |
| ERC721 Vault | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389186 | `0x523d07...ac684a` | ❓ Unverified |
| Eth/Mxc Price Aggregator | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389180 | `0x0484e6...cc581e` | ❓ Unverified |
| MXC L2 | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389181 | `0x100077...000001` | ❓ Unverified |
| Rollup Address Manager | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389183 | `0x100077...000006` | ❓ Unverified |
| Shared Address Manager | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389185 | `0x200077...000002` | ❓ Unverified |
| SignalService | unknown | project_anchor | own_supporting | 0 | moonchain | unit-389184 | `0x100077...000007` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-389179 | `0x5ca381...a8386e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389207 | `0x103ff2...0acbbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389208 | `0x184605...a12b28` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389209 | `0x35c0b3...4f0748` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389210 | `0x3d1996...a1beb1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389211 | `0x3e0c0d...a6a4df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389212 | `0x425cb0...8863a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389213 | `0x5e453d...59512f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum-sepolia | unit-389214 | `0x6a5c9e...939b0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389215 | `0x6c7a4c...3e4262` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389216 | `0x730ae7...d36336` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389217 | `0x7ff12a...690649` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389218 | `0x8687d9...5979d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389219 | `0x8cfc40...9954a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389220 | `0x8fd160...41a1c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389221 | `0xa51c5d...c49476` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389222 | `0xd3343e...e8851f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-389223 | `0xf08b17...16ea61` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389224 | `0x0d589f...8603f6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389225 | `0x100077...000001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389226 | `0x100077...000002` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389227 | `0x100077...000003` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389228 | `0x100077...000004` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389229 | `0x100077...000006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389230 | `0x100077...000007` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389231 | `0x1736fe...4ae126` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389232 | `0x1964f0...9b1237` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389233 | `0x200077...000001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389234 | `0x2c9f59...bdcc92` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389235 | `0x39c47d...57d8c7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389236 | `0x4a857d...f2eb1d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389237 | `0x52f604...7c0b73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389238 | `0x5858bb...b6cc03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389239 | `0x6c2660...899d09` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389240 | `0x727a77...dd521b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389241 | `0x88ac47...2c8e54` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389242 | `0x96adb4...299d5e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389243 | `0x98b114...082b4c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389244 | `0xa5c0d0...f5eff5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389245 | `0xce27f1...534e70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389246 | `0xd9eec1...abc7c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389247 | `0xebfd05...a528db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-5167004 | unit-389248 | `0xef4c00...8c431b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | chain-5167004 | unit-389249 | `0xf01ece...4df1df` | ❓ Unverified |

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
