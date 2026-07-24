# Agentic Audit Brief: Hats.Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Hats.Finance (`hats.finance`)
- Website: [https://hats.finance](https://hats.finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum, optimism, polygon
- Contract surface: 169 unique implementations (169 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $194,641.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Hats.Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xfd4255f16378306ca83e37015df01a1700dac296`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 168 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 169 unique; 168 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 144
- Unique implementations: 169
- Raw deployments: 169
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AutomatedFeeForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46bc877a4edc28bfef7dce78500b7970ed97c6e5` | ⚠️ Unaudited |
| FeeForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d4498e2387135a3ed1078d1037a306218a8e41d` | ⚠️ Unaudited |
| HATAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x323193b77cda1da3bb4a79f5148e9ed20f6ca233` | ⚠️ Unaudited |
| HATAirdropFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4153be482582e4cd542e2214745a5d3ce5db128` | ⚠️ Unaudited |
| HATClaimsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2866b46e9a5c993fd8ad6c5e6eb54641632c2101` | ⚠️ Unaudited |
| HATGovernanceArbitrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1065a9e3ac47f2624293727f4b8319a0a10f6015` | ⚠️ Unaudited |
| HATHackersNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e` | ⚠️ Unaudited |
| HATPaymentSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x199c5835b31a32401bdee9691cfcff1e379a3852` | ⚠️ Unaudited |
| HATPaymentSplitterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e` | ⚠️ Unaudited |
| HATTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07368f6a959ef3096230a258dd0af692699c3a4c` | ⚠️ Unaudited |
| HATToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x042613dadf333766c9815a97e08282ee90e5c5dc` | ⚠️ Unaudited |
| HATTokenArbitrumBridgeL1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76c4ec0068923da13ee11527d6cf9b7521000049` | ⚠️ Unaudited |
| HATTokenArbitrumBridgeL2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02b82d08ef5315b6206d1e946509b6bea175df4f` | ⚠️ Unaudited |
| HATTokenLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2866b46e9a5c993fd8ad6c5e6eb54641632c2101` | ⚠️ Unaudited |
| HATVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e` | ⚠️ Unaudited |
| HATVaults | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x571f39d351513146248acafa9d0509319a327c4d` | ⚠️ Unaudited |
| HATVaultsNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x225a2a0dea1357c808b4eb8bc423507dd4bbc401` | ⚠️ Unaudited |
| HATVaultsRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0aa1464db005857db8fc3e0470d306fb9e54b908` | ⚠️ Unaudited |
| HATVaultsV2Data | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07368f6a959ef3096230a258dd0af692699c3a4c` | ⚠️ Unaudited |
| MessageDispatcher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x145b550ac44c3d052e9200937dfab0b163c538de` | ⚠️ Unaudited |
| PaymentSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7690166442e81b473d6eb413e865aa6379490371` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x773d3ee9c9ba0c85e52ed7bdd960498f668c77df` | ⚠️ Unaudited |
| RewardController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c8eb8475f764e1e5a5a8027ff1fee8adb16057f` | ⚠️ Unaudited |
| TokenLockFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0aa1464db005857db8fc3e0470d306fb9e54b908` | ⚠️ Unaudited |
| TokenLockFactoryHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x006b6863370150a0e53a06335a53a9a2bb89d2e1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (144)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0aa1464db005857db8fc3e0470d306fb9e54b908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10c483158b8af7e91ce7068ba45eb5446789851d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22262fb93e56d6109fd6d630a31faabf6a1a5987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c7daec5b1c6157c2b37b2505d5d57d6d075e39e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x312917812e76d78c5b1139c28d5c1d3a272d171d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53d24b75536fa7527158088107fa9d995d79773f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54752cd6c7d83e77925f5b2c4e5b312a94adc379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58a635d0150905094c03e0b382a3453a9bcee4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b4be4c85823d29afcb146b04b69f3da2b61d59e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fce6f89fd125e9dc2838a1e5d47929e3edfe5be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66720b4abc143d8beef81919dd9fe611af53ee2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66922e992e07030ceac25e1919e9c31153f85b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67acdeb1a2b6cc7c77f9550a034aad1f1e5a6c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x685d939c8fe6cce02f3c7cbc37d024e99570812c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x844522dfc17f1ff13f0af683934a2ed3950d1b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8633212777da1394bb379df9520f098b014fb77b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e477e69e591ef24a7af27d358cf6889b0924ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c75db6367e6ee1980d1999598bd38cbfd690a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eb48ed456106ef31929a832e29e61fe444b1b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f38c9d7347b16df9e83e86cefa1047bd0a2be12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96e93876eb2314901ee9967488c650d77a50c705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1fce933533dc6d277bc8aba7d734bb4232fa44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8d310ac33a3a5e75cc377619db969d966c51838` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9393a4f3ed924cb8459f74e42800cbfbeacf808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabb34ab93589b0d026a192b6aacaf8149db05c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad5a1d4749b1e8de717845b7f01643d125f26b35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadd155731473a9501881234a865ff79668f1b6cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc570c434ba30a2fa5c07e590833246e18aa6b0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc76a9cf03f8899f787f578d94ce811f1ca3968d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbe0b90bfe99f827b8bcb5c5ac4b17107caea814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd978eb90eb1b11213e320f4e6e910eb98d8df1e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0089defd8ea918c596beaf43f49a9ea3c1f9557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe198cbb727758b9ad38a12e1ad475a843e5e730f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6394fa7d69343908a4ad5cc4ece13beb4348910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf10ff97426f66627efa20dd8a6e8dfe79bfc4b2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf419c60ac4d9a9d7ea46deb24c6346bda41c2a9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42faf6f01db30cbc79973ec578821ab645143da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7a88c5d5154669647a9d152edc03bdd820b85e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc4cc464d376e906070c002d5842468552756aa9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-241752 | `0xfd4255f16378306ca83e37015df01a1700dac296` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0aa1464db005857db8fc3e0470d306fb9e54b908` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1065a9e3ac47f2624293727f4b8319a0a10f6015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x225a2a0dea1357c808b4eb8bc423507dd4bbc401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x304a70840d8d43b288a6e4e4e718081bbcf160be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x312917812e76d78c5b1139c28d5c1d3a272d171d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x34782e01db347eb5449ab9329bd6e92ea493b160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x58958226fb12ddfc407a7766d51bab2a88d08bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5ba641a1fa1e6a7d033c9f6a8108d52b92b78257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7690166442e81b473d6eb413e865aa6379490371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x844522dfc17f1ff13f0af683934a2ed3950d1b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x878cab06e6f4a85d90e5f236d326a41ef6f44f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa80d0a371f4d37afcc55188233bb4ad463af9e48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xabb34ab93589b0d026a192b6aacaf8149db05c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc570c434ba30a2fa5c07e590833246e18aa6b0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd978eb90eb1b11213e320f4e6e910eb98d8df1e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe8ff8b05961ecbac067a9f5abdd4e7103ad75d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf972d95812acda82502fb2e9072736c6d6ee41be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfbae12d35b3a01b802acaad10d08e5bcf05d6e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07368f6a959ef3096230a258dd0af692699c3a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1065a9e3ac47f2624293727f4b8319a0a10f6015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x225a2a0dea1357c808b4eb8bc423507dd4bbc401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x304a70840d8d43b288a6e4e4e718081bbcf160be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x312917812e76d78c5b1139c28d5c1d3a272d171d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34782e01db347eb5449ab9329bd6e92ea493b160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39983d251e6e6674d20ce097205d52c08d7dc6d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58958226fb12ddfc407a7766d51bab2a88d08bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7690166442e81b473d6eb413e865aa6379490371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x844522dfc17f1ff13f0af683934a2ed3950d1b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabb34ab93589b0d026a192b6aacaf8149db05c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadd155731473a9501881234a865ff79668f1b6cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc570c434ba30a2fa5c07e590833246e18aa6b0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbe0b90bfe99f827b8bcb5c5ac4b17107caea814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd978eb90eb1b11213e320f4e6e910eb98d8df1e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe198cbb727758b9ad38a12e1ad475a843e5e730f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8ff8b05961ecbac067a9f5abdd4e7103ad75d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf972d95812acda82502fb2e9072736c6d6ee41be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07368f6a959ef3096230a258dd0af692699c3a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10c483158b8af7e91ce7068ba45eb5446789851d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x225a2a0dea1357c808b4eb8bc423507dd4bbc401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ff0509d0e9a78bf58815d768f4487f0645824f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x304a70840d8d43b288a6e4e4e718081bbcf160be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x312917812e76d78c5b1139c28d5c1d3a272d171d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x58958226fb12ddfc407a7766d51bab2a88d08bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ba641a1fa1e6a7d033c9f6a8108d52b92b78257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7690166442e81b473d6eb413e865aa6379490371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a55bebc4bb435d7bbf5151715aa93c456b6a2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x844522dfc17f1ff13f0af683934a2ed3950d1b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x878cab06e6f4a85d90e5f236d326a41ef6f44f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa80d0a371f4d37afcc55188233bb4ad463af9e48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xabb34ab93589b0d026a192b6aacaf8149db05c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xadd155731473a9501881234a865ff79668f1b6cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc570c434ba30a2fa5c07e590833246e18aa6b0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbe0b90bfe99f827b8bcb5c5ac4b17107caea814` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd978eb90eb1b11213e320f4e6e910eb98d8df1e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe198cbb727758b9ad38a12e1ad475a843e5e730f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf972d95812acda82502fb2e9072736c6d6ee41be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfbae12d35b3a01b802acaad10d08e5bcf05d6e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07368f6a959ef3096230a258dd0af692699c3a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1065a9e3ac47f2624293727f4b8319a0a10f6015` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145b550ac44c3d052e9200937dfab0b163c538de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x199c5835b31a32401bdee9691cfcff1e379a3852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e357ebe267bb76251707066ab37a04a52300785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22262fb93e56d6109fd6d630a31faabf6a1a5987` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x225a2a0dea1357c808b4eb8bc423507dd4bbc401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28e7a5bdebc3758ea07aa553f9b8f87eff588101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ff0509d0e9a78bf58815d768f4487f0645824f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x304a70840d8d43b288a6e4e4e718081bbcf160be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x312917812e76d78c5b1139c28d5c1d3a272d171d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x34782e01db347eb5449ab9329bd6e92ea493b160` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x44ab599d114434166d5704e4560a3641310e57d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x46bc877a4edc28bfef7dce78500b7970ed97c6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b72efe0caefb6ee80d5f0a554d886251134694c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d22e37eb4d71d1acc5f4889a65936d2a44a2f15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54752cd6c7d83e77925f5b2c4e5b312a94adc379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58958226fb12ddfc407a7766d51bab2a88d08bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58a635d0150905094c03e0b382a3453a9bcee4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ba641a1fa1e6a7d033c9f6a8108d52b92b78257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6292dbb1ed6b84768445c89b103d40bc8c9d809d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x67acdeb1a2b6cc7c77f9550a034aad1f1e5a6c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7690166442e81b473d6eb413e865aa6379490371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a55bebc4bb435d7bbf5151715aa93c456b6a2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81ce6022297ab5e15ba295159aa4bdac6b84a76d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83e0dfc2c1891ada906d8f266029f2a416bc8b3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x844522dfc17f1ff13f0af683934a2ed3950d1b44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x878cab06e6f4a85d90e5f236d326a41ef6f44f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88b38959e07805517fa0ffab375f4cff49d0f640` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c75db6367e6ee1980d1999598bd38cbfd690a2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8eb48ed456106ef31929a832e29e61fe444b1b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x96e93876eb2314901ee9967488c650d77a50c705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ab82c320635918ea9e48c0065f03c5827837552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d09ca2cd0687545a2dcc6f74e93499612783a18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1fce933533dc6d277bc8aba7d734bb4232fa44f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa80d0a371f4d37afcc55188233bb4ad463af9e48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9393a4f3ed924cb8459f74e42800cbfbeacf808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabb34ab93589b0d026a192b6aacaf8149db05c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9e2a4fc71bd6e5fc6b970fb0002e82f9510eb49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdb34bb8665510d331facaaaa0eeae994a5b6612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc570c434ba30a2fa5c07e590833246e18aa6b0a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd978eb90eb1b11213e320f4e6e910eb98d8df1e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0b8a9d761d8f3e05d2fff2ea916e7abbb8d98f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe8ff8b05961ecbac067a9f5abdd4e7103ad75d40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf972d95812acda82502fb2e9072736c6d6ee41be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfbae12d35b3a01b802acaad10d08e5bcf05d6e41` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 143
- Live contracts: 0
- Unknown liveness contracts: 143
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=143

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x028a7c6873dfa8357c9dcf9c9d76ef2abb66256e` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x07368f6a959ef3096230a258dd0af692699c3a4c` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1065a9e3ac47f2624293727f4b8319a0a10f6015` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x145b550ac44c3d052e9200937dfab0b163c538de` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x199c5835b31a32401bdee9691cfcff1e379a3852` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1e357ebe267bb76251707066ab37a04a52300785` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x22262fb93e56d6109fd6d630a31faabf6a1a5987` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x225a2a0dea1357c808b4eb8bc423507dd4bbc401` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x28e7a5bdebc3758ea07aa553f9b8f87eff588101` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ff0509d0e9a78bf58815d768f4487f0645824f0` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x304a70840d8d43b288a6e4e4e718081bbcf160be` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x312917812e76d78c5b1139c28d5c1d3a272d171d` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x34782e01db347eb5449ab9329bd6e92ea493b160` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x44ab599d114434166d5704e4560a3641310e57d5` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x46bc877a4edc28bfef7dce78500b7970ed97c6e5` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b72efe0caefb6ee80d5f0a554d886251134694c` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4d22e37eb4d71d1acc5f4889a65936d2a44a2f15` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x54752cd6c7d83e77925f5b2c4e5b312a94adc379` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58958226fb12ddfc407a7766d51bab2a88d08bf1` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x58a635d0150905094c03e0b382a3453a9bcee4d0` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5ba641a1fa1e6a7d033c9f6a8108d52b92b78257` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6292dbb1ed6b84768445c89b103d40bc8c9d809d` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x67acdeb1a2b6cc7c77f9550a034aad1f1e5a6c3c` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7690166442e81b473d6eb413e865aa6379490371` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a55bebc4bb435d7bbf5151715aa93c456b6a2f2` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81ce6022297ab5e15ba295159aa4bdac6b84a76d` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x83e0dfc2c1891ada906d8f266029f2a416bc8b3f` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x844522dfc17f1ff13f0af683934a2ed3950d1b44` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x878cab06e6f4a85d90e5f236d326a41ef6f44f9f` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x88b38959e07805517fa0ffab375f4cff49d0f640` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8c75db6367e6ee1980d1999598bd38cbfd690a2a` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8eb48ed456106ef31929a832e29e61fe444b1b62` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x96e93876eb2314901ee9967488c650d77a50c705` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ab82c320635918ea9e48c0065f03c5827837552` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d09ca2cd0687545a2dcc6f74e93499612783a18` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa1fce933533dc6d277bc8aba7d734bb4232fa44f` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa80d0a371f4d37afcc55188233bb4ad463af9e48` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa9393a4f3ed924cb8459f74e42800cbfbeacf808` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xabb34ab93589b0d026a192b6aacaf8149db05c99` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb9e2a4fc71bd6e5fc6b970fb0002e82f9510eb49` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbdb34bb8665510d331facaaaa0eeae994a5b6612` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc570c434ba30a2fa5c07e590833246e18aa6b0a3` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd978eb90eb1b11213e320f4e6e910eb98d8df1e4` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe0b8a9d761d8f3e05d2fff2ea916e7abbb8d98f3` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe8ff8b05961ecbac067a9f5abdd4e7103ad75d40` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf972d95812acda82502fb2e9072736c6d6ee41be` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfbae12d35b3a01b802acaad10d08e5bcf05d6e41` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x07368f6a959ef3096230a258dd0af692699c3a4c` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1065a9e3ac47f2624293727f4b8319a0a10f6015` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x225a2a0dea1357c808b4eb8bc423507dd4bbc401` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x304a70840d8d43b288a6e4e4e718081bbcf160be` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x312917812e76d78c5b1139c28d5c1d3a272d171d` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x34782e01db347eb5449ab9329bd6e92ea493b160` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x39983d251e6e6674d20ce097205d52c08d7dc6d1` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x58958226fb12ddfc407a7766d51bab2a88d08bf1` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7690166442e81b473d6eb413e865aa6379490371` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0x844522dfc17f1ff13f0af683934a2ed3950d1b44` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xabb34ab93589b0d026a192b6aacaf8149db05c99` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xadd155731473a9501881234a865ff79668f1b6cf` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc570c434ba30a2fa5c07e590833246e18aa6b0a3` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcbe0b90bfe99f827b8bcb5c5ac4b17107caea814` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd978eb90eb1b11213e320f4e6e910eb98d8df1e4` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe198cbb727758b9ad38a12e1ad475a843e5e730f` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe8ff8b05961ecbac067a9f5abdd4e7103ad75d40` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf972d95812acda82502fb2e9072736c6d6ee41be` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5fce6f89fd125e9dc2838a1e5d47929e3edfe5be` | non_address_book | unknown | unknown | unverified | n/a | `0x101d0d6cc335c681f4a3139fb2094d9206807383` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0aa1464db005857db8fc3e0470d306fb9e54b908` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10c483158b8af7e91ce7068ba45eb5446789851d` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22262fb93e56d6109fd6d630a31faabf6a1a5987` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x312917812e76d78c5b1139c28d5c1d3a272d171d` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54752cd6c7d83e77925f5b2c4e5b312a94adc379` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x58a635d0150905094c03e0b382a3453a9bcee4d0` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66720b4abc143d8beef81919dd9fe611af53ee2a` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66922e992e07030ceac25e1919e9c31153f85b6f` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67acdeb1a2b6cc7c77f9550a034aad1f1e5a6c3c` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x844522dfc17f1ff13f0af683934a2ed3950d1b44` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8633212777da1394bb379df9520f098b014fb77b` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89e477e69e591ef24a7af27d358cf6889b0924ab` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8c75db6367e6ee1980d1999598bd38cbfd690a2a` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8eb48ed456106ef31929a832e29e61fe444b1b62` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x96e93876eb2314901ee9967488c650d77a50c705` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1fce933533dc6d277bc8aba7d734bb4232fa44f` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa8d310ac33a3a5e75cc377619db969d966c51838` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa9393a4f3ed924cb8459f74e42800cbfbeacf808` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xabb34ab93589b0d026a192b6aacaf8149db05c99` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xadd155731473a9501881234a865ff79668f1b6cf` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc570c434ba30a2fa5c07e590833246e18aa6b0a3` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcbe0b90bfe99f827b8bcb5c5ac4b17107caea814` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd978eb90eb1b11213e320f4e6e910eb98d8df1e4` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0089defd8ea918c596beaf43f49a9ea3c1f9557` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe198cbb727758b9ad38a12e1ad475a843e5e730f` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6394fa7d69343908a4ad5cc4ece13beb4348910` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf419c60ac4d9a9d7ea46deb24c6346bda41c2a9d` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf42faf6f01db30cbc79973ec578821ab645143da` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7a88c5d5154669647a9d152edc03bdd820b85e0` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc4cc464d376e906070c002d5842468552756aa9` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c7daec5b1c6157c2b37b2505d5d57d6d075e39e` | non_address_book | unknown | unknown | unverified | n/a | `0xa13ddfa63774c5b982d2c3e92fde3b660616ffcd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x53d24b75536fa7527158088107fa9d995d79773f` | non_address_book | unknown | unknown | unverified | n/a | `0xa13ddfa63774c5b982d2c3e92fde3b660616ffcd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5b4be4c85823d29afcb146b04b69f3da2b61d59e` | non_address_book | unknown | unknown | unverified | n/a | `0xa13ddfa63774c5b982d2c3e92fde3b660616ffcd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x685d939c8fe6cce02f3c7cbc37d024e99570812c` | non_address_book | unknown | unknown | unverified | n/a | `0xa13ddfa63774c5b982d2c3e92fde3b660616ffcd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8f38c9d7347b16df9e83e86cefa1047bd0a2be12` | non_address_book | unknown | unknown | unverified | n/a | `0xa13ddfa63774c5b982d2c3e92fde3b660616ffcd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xad5a1d4749b1e8de717845b7f01643d125f26b35` | non_address_book | unknown | unknown | unverified | n/a | `0xa13ddfa63774c5b982d2c3e92fde3b660616ffcd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc76a9cf03f8899f787f578d94ce811f1ca3968d8` | non_address_book | unknown | unknown | unverified | n/a | `0xa13ddfa63774c5b982d2c3e92fde3b660616ffcd` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf10ff97426f66627efa20dd8a6e8dfe79bfc4b2d` | non_address_book | unknown | unknown | unverified | n/a | `0xa13ddfa63774c5b982d2c3e92fde3b660616ffcd` |
| optimism | unverified unclassified | UnnamedContract<br>`0x0aa1464db005857db8fc3e0470d306fb9e54b908` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x1065a9e3ac47f2624293727f4b8319a0a10f6015` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x225a2a0dea1357c808b4eb8bc423507dd4bbc401` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x304a70840d8d43b288a6e4e4e718081bbcf160be` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x312917812e76d78c5b1139c28d5c1d3a272d171d` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x34782e01db347eb5449ab9329bd6e92ea493b160` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x58958226fb12ddfc407a7766d51bab2a88d08bf1` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x5ba641a1fa1e6a7d033c9f6a8108d52b92b78257` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x7690166442e81b473d6eb413e865aa6379490371` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x844522dfc17f1ff13f0af683934a2ed3950d1b44` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0x878cab06e6f4a85d90e5f236d326a41ef6f44f9f` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xa80d0a371f4d37afcc55188233bb4ad463af9e48` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xabb34ab93589b0d026a192b6aacaf8149db05c99` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xc570c434ba30a2fa5c07e590833246e18aa6b0a3` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xd978eb90eb1b11213e320f4e6e910eb98d8df1e4` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xe8ff8b05961ecbac067a9f5abdd4e7103ad75d40` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xf972d95812acda82502fb2e9072736c6d6ee41be` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| optimism | unverified unclassified | UnnamedContract<br>`0xfbae12d35b3a01b802acaad10d08e5bcf05d6e41` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x07368f6a959ef3096230a258dd0af692699c3a4c` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x10c483158b8af7e91ce7068ba45eb5446789851d` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x225a2a0dea1357c808b4eb8bc423507dd4bbc401` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2ff0509d0e9a78bf58815d768f4487f0645824f0` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x304a70840d8d43b288a6e4e4e718081bbcf160be` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x312917812e76d78c5b1139c28d5c1d3a272d171d` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x58958226fb12ddfc407a7766d51bab2a88d08bf1` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x5ba641a1fa1e6a7d033c9f6a8108d52b92b78257` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7690166442e81b473d6eb413e865aa6379490371` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x7a55bebc4bb435d7bbf5151715aa93c456b6a2f2` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x844522dfc17f1ff13f0af683934a2ed3950d1b44` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0x878cab06e6f4a85d90e5f236d326a41ef6f44f9f` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xa80d0a371f4d37afcc55188233bb4ad463af9e48` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xabb34ab93589b0d026a192b6aacaf8149db05c99` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xadd155731473a9501881234a865ff79668f1b6cf` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xc570c434ba30a2fa5c07e590833246e18aa6b0a3` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xcbe0b90bfe99f827b8bcb5c5ac4b17107caea814` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xd978eb90eb1b11213e320f4e6e910eb98d8df1e4` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xe198cbb727758b9ad38a12e1ad475a843e5e730f` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xf972d95812acda82502fb2e9072736c6d6ee41be` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |
| polygon | unverified unclassified | UnnamedContract<br>`0xfbae12d35b3a01b802acaad10d08e5bcf05d6e41` | non_address_book | unknown | unknown | unverified | n/a | `0x1885b7c7a3ae1f35ba71c0392c13153a95c4914f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [202105-zokyo-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202105-zokyo-audit.pdf) | Zokyo | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [202107-g0-group-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202107-g0-group-audit.pdf) | G0 Group | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [202109-levi-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202109-levi-audit.pdf) | Levi | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [202210-g0-group-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202210-g0-group-audit.pdf) | G0 Group | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [202301-hexen-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202301-hexen-audit.pdf) | Hexen | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [202302-g0-group-audit.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/202302-g0-group-audit.pdf) | G0 Group | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Hats - Audit Report.pdf](https://github.com/hats-finance/hats-contracts/blob/develop/audit/Hats%20-%20Audit%20Report.pdf) | Unknown | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17421] 202105-zokyo-audit.pdf — no match: Contracts extracted from findings and file paths in the report. No explicit scope table, but contracts are clearly audited.
- [17422] 202107-g0-group-audit.pdf — no match: Scope section states 'All solidity files in https://github.com/hats-finance/hats-contracts/tree/46e7a21fd32be2cfdf1b9f309f54dbc3b0d5dbcc'. Contract names extracted from findings.
- [17423] 202109-levi-audit.pdf — no match: All contracts listed in 'Files in scope' section extracted. Audit date inferred from title 'Hats Audit / Aug 2021' (month and year only, last day of month used).
- [17424] 202210-g0-group-audit.pdf — no match: Scope mentions all .sol files in the repository; only HATVault and RewardController are explicitly named in findings.
- [17425] 202301-hexen-audit.pdf — no match: Extracted contracts from scope and findings sections. Date from cover page.
- [17426] 202302-g0-group-audit.pdf — no match: All contracts listed in the 'Files in scope' section of the report.
- [17427] Hats - Audit Report.pdf — no match: Audit report for Hats DAO, August 2021. Scope includes 12 contracts listed under 'Files in scope'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 202105-zokyo-audit.pdf | HATVault | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | HATMaster | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | HATToken | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | HATTokenLock | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | HATVaults | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | TokenLock | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | TokenLockFactory | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | Ownable | unmatched — not counted | — | mentioned in findings | no |
| 202105-zokyo-audit.pdf | Governable | unmatched — not counted | — | mentioned in findings | no |
| 202107-g0-group-audit.pdf | HATMaster | unmatched — not counted | — | mentioned in findings | no |
| 202107-g0-group-audit.pdf | HATToken | unmatched — not counted | — | mentioned in findings | no |
| 202107-g0-group-audit.pdf | TokenLockFactory | unmatched — not counted | — | mentioned in findings | no |
| 202107-g0-group-audit.pdf | HATVaults | unmatched — not counted | — | mentioned in findings | no |
| 202109-levi-audit.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | HATMaster | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | HATToken | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | HATVaults | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | CloneFactory | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | HATTokenLock | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | ITokenLock | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | ITokenLockFactory | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | OwnableInitializable | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | TokenLock | unmatched — not counted | — | listed in scope | no |
| 202109-levi-audit.pdf | TokenLockFactory | unmatched — not counted | — | listed in scope | no |
| 202210-g0-group-audit.pdf | HATVault | unmatched — not counted | — | mentioned in scope and findings | no |
| 202210-g0-group-audit.pdf | RewardController | unmatched — not counted | — | mentioned in findings | no |
| 202301-hexen-audit.pdf | HATVault | unmatched — not counted | — | listed in scope and findings | no |
| 202301-hexen-audit.pdf | HATVaultsRegistry | unmatched — not counted | — | listed in scope and findings | no |
| 202301-hexen-audit.pdf | HATToken | unmatched — not counted | — | listed in findings | no |
| 202302-g0-group-audit.pdf | IHATToken | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IHATVault | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IHATVaultsData | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IHATVaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IHATVaultsV1 | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IHATVaultsV2 | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | IRewardController | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATTokenLock | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | TokenLock | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | TokenLockFactory | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | ITokenLockFactory | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | ITokenLock | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATGovernanceArbitrator | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATTimelockController | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATToken | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATVault | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | HATVaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 202302-g0-group-audit.pdf | RewardController | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | HATMaster | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | HATToken | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | HATVaults | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | CloneFactory | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | HATTokenLock | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | ITokenLock | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | ITokenLockFactory | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | OwnableInitializable | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | TokenLock | unmatched — not counted | — | listed in scope | no |
| Hats - Audit Report.pdf | TokenLockFactory | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 144 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 60 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=7
- Match method counts: n/a

Zero-match audit list:

- [17421] 202105-zokyo-audit.pdf
- [17422] 202107-g0-group-audit.pdf
- [17423] 202109-levi-audit.pdf
- [17424] 202210-g0-group-audit.pdf
- [17425] 202301-hexen-audit.pdf
- [17426] 202302-g0-group-audit.pdf
- [17427] Hats - Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
