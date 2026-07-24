# Agentic Audit Brief: Kelp

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Kelp (`kelp-dao`)
- Website: [https://kerneldao.com/kelp/](https://kerneldao.com/kelp/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, base-sepolia, berachain, blast, bsc, chain-17000, ethereum, hemi, hoodi, linea, manta-pacific, mode, optimism, scroll, sonic, swellchain, x-layer, zircuit, zksync-era
- Contract surface: 442 unique implementations (442 raw deployments)
- Coverage basis: 0/31 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kelp. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 31 contract row(s) across arbitrum, base, base-sepolia, berachain, blast, bsc, chain-17000, ethereum, hemi, hoodi, linea, manta-pacific, mode, optimism, scroll, sonic, swellchain, x-layer, zircuit, zksync-era. Structural roles: 25 supporting, 6 core. 25 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 31
- Structural roles: supporting (25), core (6)
- Contract kinds: abstract (23), contract (8)
- Detected standards: erc1967proxy (24), accesscontrol (3), erc165 (3), ownable (2)
- Frameworks: openzeppelin (30), openzeppelin-upgradeable (25)
- Upgradeable-pattern rows: 25

## Fork Analysis

0 of 31 contracts are derived from known codebases. 31 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ETH Mainnet Admin Safe / ProxyAdmin owner (`0xb9577e83a6d9a6de35047aa066e3758221fe0da2`, chain 1)
- L1Vault (Arbitrum) (`0x4b7b39793a84ab6eccda80795733480e7d046be8`, chain 1)
- L1Vault (Base) (`0x48cdad4c3c7a2f5818dab5eb08df7db5420a60f6`, chain 1)
- L1Vault (Linea) (`0x6224c582a0989cfecd232af28c68f446b46979ef`, chain 1)
- L1Vault (Optimism) (`0x83d4b497dbe3bd2d42e0f3ee5ab34f83e80ab4e0`, chain 1)
- L1Vault (Scroll) (`0x32064a427e8bdf59b14ac169d9835168328a36a6`, chain 1)
- L1Vault (zkSync) (`0xdadb65fb1fcc3d877d774e5e2b00013fe1efbf76`, chain 1)
- L1Vault and multichain rate-provider TimelockController (`0x10e5631320a6e7898f1b18aeade46acc81deb869`, chain 1)
- L1Vault ProxyAdmin (`0x2155ab0b399a71df8c464dfc1b02149b53b2b2c1`, chain 1)
- LRTConfig (`0x947cb49334e6571ccbfef1f1f1178d8469d65ec7`, chain 1)
- LRTConverter (`0x598dbcb99711e5577ff76ef4577417197b939dfa`, chain 1)
- LRTDepositPool (`0x036676389e48133b63a802f8635ad39e752d375d`, chain 1)
- LRTOracle (`0x349a73444b1a310bae67ef67973022020d70020d`, chain 1)
- LRTUnstakingVault (`0xc66830e2667bc740c0bed9a71f18b14b8c8184ba`, chain 1)
- LRTWithdrawalManager (`0x62de59c08eb5dae4b7e6f7a8cad3006d6965ec16`, chain 1)
- Manager TimelockController (`0x1fda02cf28f28a763d996ad5ee37b9f1b608e674`, chain 1)
- NodeDelegator proxy 0 (`0xfc561966ceaaa09f4d6cba4add54778c2bf1cb85`, chain 1)
- NodeDelegator proxy 1 (Luganodes) (`0x395884d1974a839702bcfcba176ac7871c788946`, chain 1)
- NodeDelegator proxy 2 (P2P) (`0x79f17234746344e0365d40be50d8d43db9082c32`, chain 1)
- NodeDelegator proxy 3 (`0x4c798c4653b1257d5149910523d7a6eed5712f83`, chain 1)
- NodeDelegator proxy 4 (`0xee5470e1519972c3ea95249d60ebd064af2d53d3`, chain 1)
- NodeDelegator proxy 5 (Allnodes/Pier2) (`0x049ea11d337f185b1aa910d98e8fbd991f0fba7b`, chain 1)
- NodeDelegator proxy 6 (Luganodes) (`0x545d69b99759e7b670df243b882700121d6d3ab9`, chain 1)
- ProxyAdmin (Admin Safe-owned) (`0x7550eaee86f649dc5cba74e92d3e2667b68753fa`, chain 1)
- ProxyAdmin (Timelock-owned) (`0xb61e0e39b6d4030c36a176f576aabe44bf59dc78`, chain 1)
- ProxyFactory (`0x673a669425457bcabeb247f56552a0fd8141cee2`, chain 1)
- rsETH (`0xa1290d69c65a6fe4df752f95823fae25cb99e5a7`, chain 1)
- RSETHMultiChainRateProvider (`0x0788906b19ba8f8d0e8a7015f0714df3179d9ab6`, chain 1)
- RSETHRateProvider (`0xf1cccba5558d31628216489a1435e068b1fd2c8a`, chain 1)
- TimelockController / ProxyAdmin owner (`0x49bd9989e31ad35b0a62c20be86335196a3135b1`, chain 1)
- UnlockedWithdrawalsInitializer (`0xa9b1ced1839ba07c4e8aaef45bb60c8b27b35595`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 31; live-surface rows included: 31 (31 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 31/74 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/31 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 31 own, 42 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 369 discovered implementations shown in the inventory but excluded from coverage (19 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 31 of 442 unique; 411 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/31
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 411
- Unique implementations: 442
- Raw deployments: 442
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

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ETH Mainnet Admin Safe / ProxyAdmin owner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388266 | `0xb9577e83a6d9a6de35047aa066e3758221fe0da2` | ⚠️ Unaudited |
| L1Vault (Arbitrum) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388248 | `0x4b7b39793a84ab6eccda80795733480e7d046be8` | ⚠️ Unaudited |
| L1Vault (Base) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388246 | `0x48cdad4c3c7a2f5818dab5eb08df7db5420a60f6` | ⚠️ Unaudited |
| L1Vault (Linea) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388253 | `0x6224c582a0989cfecd232af28c68f446b46979ef` | ⚠️ Unaudited |
| L1Vault (Optimism) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388258 | `0x83d4b497dbe3bd2d42e0f3ee5ab34f83e80ab4e0` | ⚠️ Unaudited |
| L1Vault (Scroll) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388241 | `0x32064a427e8bdf59b14ac169d9835168328a36a6` | ⚠️ Unaudited |
| L1Vault (zkSync) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388268 | `0xdadb65fb1fcc3d877d774e5e2b00013fe1efbf76` | ⚠️ Unaudited |
| L1Vault and multichain rate-provider TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388238 | `0x10e5631320a6e7898f1b18aeade46acc81deb869` | ⚠️ Unaudited |
| L1Vault ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388240 | `0x2155ab0b399a71df8c464dfc1b02149b53b2b2c1` | ⚠️ Unaudited |
| LRTConfig | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388261 | `0x947cb49334e6571ccbfef1f1f1178d8469d65ec7` | ⚠️ Unaudited |
| LRTConverter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388252 | `0x598dbcb99711e5577ff76ef4577417197b939dfa` | ⚠️ Unaudited |
| LRTDepositPool | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388234 | `0x036676389e48133b63a802f8635ad39e752d375d` | ⚠️ Unaudited |
| LRTOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388243 | `0x349a73444b1a310bae67ef67973022020d70020d` | ⚠️ Unaudited |
| LRTUnstakingVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388267 | `0xc66830e2667bc740c0bed9a71f18b14b8c8184ba` | ⚠️ Unaudited |
| LRTWithdrawalManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388254 | `0x62de59c08eb5dae4b7e6f7a8cad3006d6965ec16` | ⚠️ Unaudited |
| Manager TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388239 | `0x1fda02cf28f28a763d996ad5ee37b9f1b608e674` | ⚠️ Unaudited |
| NodeDelegator proxy 0 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388273 | `0xfc561966ceaaa09f4d6cba4add54778c2bf1cb85` | ⚠️ Unaudited |
| NodeDelegator proxy 1 (Luganodes) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388244 | `0x395884d1974a839702bcfcba176ac7871c788946` | ⚠️ Unaudited |
| NodeDelegator proxy 2 (P2P) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388257 | `0x79f17234746344e0365d40be50d8d43db9082c32` | ⚠️ Unaudited |
| NodeDelegator proxy 3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388249 | `0x4c798c4653b1257d5149910523d7a6eed5712f83` | ⚠️ Unaudited |
| NodeDelegator proxy 4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388271 | `0xee5470e1519972c3ea95249d60ebd064af2d53d3` | ⚠️ Unaudited |
| NodeDelegator proxy 5 (Allnodes/Pier2) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388235 | `0x049ea11d337f185b1aa910d98e8fbd991f0fba7b` | ⚠️ Unaudited |
| NodeDelegator proxy 6 (Luganodes) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388251 | `0x545d69b99759e7b670df243b882700121d6d3ab9` | ⚠️ Unaudited |
| ProxyAdmin (Admin Safe-owned) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388256 | `0x7550eaee86f649dc5cba74e92d3e2667b68753fa` | ⚠️ Unaudited |
| ProxyAdmin (Timelock-owned) | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388265 | `0xb61e0e39b6d4030c36a176f576aabe44bf59dc78` | ⚠️ Unaudited |
| ProxyFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388255 | `0x673a669425457bcabeb247f56552a0fd8141cee2` | ⚠️ Unaudited |
| rsETH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388263 | `0xa1290d69c65a6fe4df752f95823fae25cb99e5a7` | ⚠️ Unaudited |
| RSETHMultiChainRateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388236 | `0x0788906b19ba8f8d0e8a7015f0714df3179d9ab6` | ⚠️ Unaudited |
| RSETHRateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388272 | `0xf1cccba5558d31628216489a1435e068b1fd2c8a` | ⚠️ Unaudited |
| TimelockController / ProxyAdmin owner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388247 | `0x49bd9989e31ad35b0a62c20be86335196a3135b1` | ⚠️ Unaudited |
| UnlockedWithdrawalsInitializer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388264 | `0xa9b1ced1839ba07c4e8aaef45bb60c8b27b35595` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (411)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00ed1a18ba7968c5f074eaf60371d6309515a294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x016c5cc0bf9bca4eb1d38b3a80ad87707355255a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0379e85188bc416a1d43ab04b28f38b5c63f129e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03997454268da350a353af07785ed1e2266fac6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03abeec03bf39ac5a5c8886cf3496326d8164e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x043ba0ffaac0db6372e27995eab11321ffe1d1a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060a6a57f8ce8fb99cbc8d4fd6b73c36eebd2c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x074791f014725936ee721520fa896634860fbfd6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388237 | `0x07b96cf1183c9bff2e43acf0e547a8c4e4429473` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x087143b8e69da4882e6c310fcfc36e52310021bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09134c643a6b95d342bdaf081fa473338f066572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09917e5e8466b667f8cc36b74681fb103d5edd33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a54470a717932efd6880164f53a10de3108707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6937e884fcb4b376de1f957770e2e1f8262986` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c78bba53c53c4f9dbc8da2c57b156e4596870ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d4fefd3c9ba9214c2412c87bc140e1766ab584b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d6cbc29b41d5cea6653eb638b5ba77a88f9586b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eafa7b6a3bd5fabb9e0c28f488b3d9e28f9c1cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ecde3f414d1a245246d121e37191d9a63684e19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f9479226734ef4fd25b36470584f8e1ab620e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x101152a10262a9fa8f4ed8399cd74e2ff9b45fbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x106c7053fbb563bcb06b723072bf0628db69b27b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1082a48779188c53507d28b1d2a4b17ad839be6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12c391f1bef4663532ffbab2664138f290291fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x133e3cc259eaf5ddcf3684dff62965243fbb6150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13576cd2b61e601d3e98b5c06ef81896c9bbb369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x141f6c276d7a1937603667c72a7688edbda16728` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144853f68b948625bbd2d3bc50431547c3d94221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1534c9c947fba16ce3a6ca2c204cf47b190cb262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1546dcccc2a5cf9730142cf1fdc9374b2c4a4790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15d5b49167289481122289f5cc0b2fca263875fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b5a9e31fda362c1328d8a8d63bbd5ca3a56dd26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc71130a0e39942a7658878169764bbd8a45993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d0bb74f3822926e0e330d8b9a5f7703f9e8d295` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1de458031bfbe5689ded5a8b9ed57e1e79eab2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1edc0e346a178da11d167da58684f8ce7e8c12b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fc8eebd7e1e61cc2cca005ee0f0d08417e5a2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x201901be4211886b298ac1652b0e916f948f52f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20b8b922bf59adeb4c4b9222c580079da36694c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237337c27128d5506a67d2db61086c7e3231fcab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24dc76ed8830090cd9661b42c741916fbbca88de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2540939c846b8096534b0dcc6ebb6ebdf3ae1f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x266a15d35327406c51789a7669465505abc44abc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27fc118493fae6340fbfac77e921c895f2c5499c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a1d74de3027cce18d31011518c571130a4cd513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ad42d71f65f76860fce2c39032def101422b3f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2df9361085eb84d72c4c3312439621aeb4957b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e2ea204dd537ffae9b2d6915b910af1ef22cc01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f13d04b79d484b04358f64820cdb2725041e0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3073cc90ad39e0c30bb0d4c70f981fbd00f3458f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30c2501b3b2031fba3000daa6f8ed0a42fbbb3f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3151293f241bd7391f4ecaef206607b59f424417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x315ae796d37c3dfe3046b772229620f22c5220b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319eee64d20a01e4a62215a35727fa8f2f35cf8c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388242 | `0x322f2d4bfe8280eeb713b7c51eeba42590c36f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3433d140497b54f0a9a73ae39e97cdc657d5a2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36a5d40ac8acb7cec9c0e61c4d1fd338ebf6e414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36ee796f8af996d26efb93478ba91d3f1331c1ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abc7ef589c31b53290bbb693ce90dd5f64248ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3abe33f1995109d7cf5c89dac472ab003bfc44a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e2d74b2c9cc312fe68b866609efb603f78c61d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f80b1c54ae920be41a77f8b902259d48cf24ccf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fc9a1ac80c1335209f41dc4e31be6531d7daa65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d66722b20e761b067df017457d956d27c53225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x425d3efdb06639b4e5303082a39880143c2332e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388245 | `0x429554411c8f0aceec899100d3aaccf2707748b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4548a9300d890f6a7c8a5da563bd2ffac4ec229d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46e43f36ecce20e4a7f6e02b9371b6ba6fdac1a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a20223888770c35fe243ec86df9277cdbbb017` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47a368d5eb1015f78be791a2877fb25db9c6e282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4996f98a8539b0c87bf0eb69466f5af2c1f6314f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a92f998d8521a4280230a823b5922a0511cbfce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4abef2263d5a5ed582fc9a9789a41d85b68d69db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b9c66c2c0d3706aabc6d00d2a6ffd2b68a4e383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c22ffd479637ea0ed61d451cbe6355627283358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c4cf3fd21d9540c5337be8dfa2165ab49d541b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cb8d6dcd56d6b371210e70837753f2a835160c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d9663669a9e64c7523f3f815d225af1630f3850` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388250 | `0x4e24a7e8b276b8ed42124c9e09c811f3edc98c62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f4bfa0861f62309934a5551e0b2541ee82fdcf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x506b066a118f8ef5f1ee016e2c52bd54d6877ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f88fbbc50629b8b37f68c4dc28f712a8bf679b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50fb23fde4d469698821792d4a34863dca3eb5e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x529d520c2579ce24de33198bf00c7a8460871475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d26e5988cb034e61e9cf14c617951f6e3d3eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5333869cff4713e9fa547095276bf1c9217da6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x534b51ba0fd7831394416681ce7cf401986332bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53b1163ecb64dec618f56a1544147506b9355e25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53df50dca8a30355a1f3272bd9095c3bb4c374bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56187c539da2000e1fcc8acb06f844da8afd3a26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5663ea61dd44986bb92fca764d1be02bde08399a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x567bcc906ebe21dfeadc689102854909109df226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575331ee9da4d2731ec722a1beab6c373a6ac6cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58167d5c3b35aad45b00465244486554c69e093a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5880211fa1089dbc6d400c05eeeedae27cdd9104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e8537324a61d76329630e9899f91c7521d74af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a818a7c418f67442aa450d3347d2785742ee148` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aaf33395feaa1d342dcda6198126b40959286a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bd4dda54727858f2ec15611162f5a6cb4fc98b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eb08730b36ccbb9b1e0b8afa561e8c987d584c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x602c00e3dc1badd42a3d796012d3b3dd9ffecfce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60ff20bacd9a647e4025ed8b17ce30e40095a1d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x615bac1593f20d853b0946d16b81200d9b9f96dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61cb8bf7ecc1b04bbcbcee48320bdfca8151e211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62082a614c2fa1016f01581dfcb96dab64d84383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62e0b431990ea128fe685e764fb04e7d604603b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6425b95d71452e95ced7e5e620fc68561b5ba952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64b7764e73a83eb1d921b43eb87bc5e0efdbd712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x651efde2f25aca6386f4ad0a0c56c3c41a819f0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67b12264ca3e0037fc7e22f2457b42643a04c86e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6894ffc7137fe5707eb23db39825dd20c6f44ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68de8884076e4a824704dcb5c7de032e80d42dc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x690b93ce2d6827e48dcf74d051bf627e03dfb038` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6932e85964fa31f70ed9debe63d9d969ad00f112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a3fae250723661c569c19eabe7b34c6b838cfcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a8f39bd3d79753633b4392ce4f9f319fe3186c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b54297879249fa16ca7c106a7a66bad168ba7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ccabba6100be33ded45bcec21df92dba9dfe250` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d107dcc9c05ad4f8cbdfb706be561ff00f5c288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d39afa5bd1bf684220f2d956ec7abffc89274fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f54b0882d690a87ad9abd669acd2ef500ed63c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fc178d2e40f47233960b8e784b64dcc6ac556ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708bf417560d0074176258bebcef79cd2a7b4aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70daf8b0bfc846cc98b71d2f8ffdc91f4d2bbd51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fcfbb24663bc76aaed7ead56381711b22be90a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7159107483e623707c18c6e06cbc095bd0717783` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71e3628b2cb771b7219008bc90a451971df0b1fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7229e34dffc6338f2b33a22d40a9657d4e08b0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7251e1844427f08b4bd64a06ace37639fab273d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e7b93ed9110bf176f6eaa9eadee9a6b75bbfae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75f5a270ccfc85134555dd37ea8a518dafdf36df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77287266e0b7fbabe76c58e95ad954489c2bf923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7848f1b36d469dcb0e069255d9d98971a04b7a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x788f0b81809be6f5e07f277a676c7f392c3854aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79a0a901dba2ee392709737d7542a1bc49ca9ab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7adfb5edf9d68e3c6c2de523308ff2eff9062abe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ae908b02b6874f9527537979db22f13d688e21f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af4730cc8ebad1a050dcad5c03c33d2793ee91f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ba00d4e2d656461ed06f940a72670802f020514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bfc9a651cc6f5bb677eecd263b2b8c390853d0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d6a6b22dff8039943d1ddb90073c369a0703f6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d6dec1b09007d61f2d32df92433229df700924e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e910f329fa7865349723d41d751ba0bf38fb647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81b08a0d57ea284b282b12a574139db0ec862439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81e1112966f2e6115b5b3d2efd94cde8ae57e793` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8322793ceb2d8740ad83ed431e69ae87fa1a86ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b7fd3d92ef0340c7f940fd2ff5e762cb0878a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84645f1b80475992df2c65c28be6688d15dc6ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84ffdc9de310144d889540a49052f6d1adb2c335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x851f8c43796f3e73b234432dae4411c7ccb35dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a22763f94d703d2ee39e9374616ae4c1612569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85d349864f717bd3d3a6576aedaca61002acece6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-388259 | `0x85d456b2dff1fd8245387c0bfb64dfb700e98ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x868cef33e29bf3037b5d4cf5c408eaef29d96b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x874aff43add7bf5ebcb29d417857d2fa15a7d8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886558435c5e4c1659b85dd63ab8c70385842670` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8974a3d9fa43db7ea327d755f45113157ce01b79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b30996ff1dd1b58b7e93ff90c25de679e4d0e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b9991f89fc31600dce064566cce28dc174fb8e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c57cd57634579116a192b93575f7955642f2e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d80ad529f68b11c2492301ba4fb78e5a654c206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d9cd771c51b7f6217e0000c1c735f05adbe6594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e2fe2f55f295f3f141213789796fa79e709ef23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8eaca66086b70bb61fe07c386c2c7749af426784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f11110ee75d102d0fd948685a5c735bfc581213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91d8c76a5d65007f011845eaf79eb5ffcc7535d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926275bfdd09911fa51fa407ff5edb5a9de29f14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388260 | `0x92b4f5b9ffa1b5db3b976e89a75e87b332e6e388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x938cf7510ca0b210040f07440d0d7e43a8744982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94266fdf200c796a1ab41c5c011ed06ca1bde96d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96e63af9ddeea924745ba77cd62a2a2f5885899d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97619f93e4d04082e7ec255edded89a6737dcc77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97ad8ff124126ddc976d90e522cb26e5ceb357c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c92752dd8a8947ce453d3e35d2cad5857367af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aeed279c157e9df29a504a8c9c848a5613cb6b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c739fc76fed6cfa2dc0b45c2a6560c5b08e1b49` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388262 | `0x9d2fc9287e1c3a1a814382b40aab13873031c4ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d4c3166c59412cedbe7d901f5fde41903a1d6fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d7e1305eb116eada4000212145db0494e66c3c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dcc9f9d4ce6efc5fc91f671bb24409ea5edfa74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dceaeb1c035c1427e64e6c6fec61f816e0d0ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e02faf37d05540232590e94f9e7afda64673a50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f0491b32dbce587c50c4c43ab303b06478193a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa086bcae7adbf64c64b4613770d3ff59645ef553` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0cd84c29c5eee3780bd88bd35c0681f1eb6360f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa18b0ca9806e4873aeaeef7d1e939856caf8bfd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d96cade4f6e087bec92ef0c32f0130aca4be3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29f97d9a9d6492e764b2cd417e7e2e49bb1223a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa29fb8f34f8906aea9ad9dd9c1f17db4439cf9fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2aa24e91a345b3dd8652f304390203d0e1c4d31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2ed599de0b8663b3381b48c9b10331c2bac241d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa32369f9588efaa3aeb571124e63ab4469a56815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa35b1b31ce002fbf2058d22f30f95d405200a15b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e7417f17bc4ff78395b8a185366554159e5883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7d877332230ee1d8af941ca6ef9217be6b6762e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7f3a4d8395d62df12bf35afb4ab8db42f12926f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa86f75549c21f815f61053a39b0d97062ff6dc53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa88845af0d087ce8cf2f6d7d7a674154b21f73a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa8bb6ce4523555f08310e9e4337d26d27ec102ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa33241f53fe18d6d2036e4ecf1a837f2020cd6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa85cabe1ec07ac588fcdc92a6ff7d40eee33d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab102e3073116db80cbb30e9326b1a6f12a014c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabb0b39351baad728b5d4ca26b12d6571a2cd1dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac1fd5787c51576058a913ea42f823bbff76be06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacc5263f9bede117b4e438726a0cb7a51d02a075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad22b3d194df228c2bff95de430ea4b4fc62bd43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadab19d829377f8df7cfffef3dc07f810eca7171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf42d795a6d279e9dcc19dc0ee1ce3ecd4ecf5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafdc17618160179bf0dc363ddc5f6230c68540ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0313a93f90f54157f329dc647cb42cc763b5974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0adc5ba5de3df2d465de4613304002fa851360b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0cdbbc83c01a28ee464f5f8622e2e8707e04b25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1238b191b5280378635b27ce4f37e57187cf19c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb21b7db6d1dad2a7b057ba5c2e9ba2891fb2e80d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6c62a597b46cbadc33e0738ef604f5afc11f2f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7bde2975330679e01ca07ed2d8c071b1c61247f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d6cf158714fcb8639feb15e0f8082d6f402f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba8cf51fe7aee2558f98ce9e0afce5704ca470f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbabc1810dd38323bd63a68f562a9d031a6a7956c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb7a05a8d16cd4f1f1916f4093d079192b39a2fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbb72a252d9cc5ee2f1ba4bd98601055b5125063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbda323961c78e7df854f85b0f8219dbc8438bd13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe3781ce437cc3fc8c8167913b4d462347d11f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf23a156833a9d42e0fb390fbb2b612d99e59594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf28c9fcb12a97441488f9c68faa49811a98688a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc276db339e551ecbe0ac323a7c4a5c6ca61813fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4e9f128d24b27b4705c9bc3fef190c4d1924830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f53a6c259a6951406534b214564b3b529719e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc59110239240761ccd3e670288443316e10dd271` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5cd38d47d0c2bd7fe18c64a50c512063dc29700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6562639a0af29a925754b688c522135172122cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc72a08c682cb0aa0f4cb9320c018fbde1626a8d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9ef97549e28390003de53279b7d3d39dce81637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca652283e7d919558f2a7ccbbbe81bb7faaeaa9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb17b589165f0fc94a4ff152f9c05edcfc0ef67f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf090ed04eb964bdb2f3dfaac783d25cc58781c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce6c69663c2d397b3e9fdb32d39c9a0b2505ec78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf5ea1b38380f6af39068375516daf40ed70d299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd13baa186b5d621e367dbaa17e3e1a3756bc8bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1a72bd052e0d65b7c26d3dd97a98b74acbbb6c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4114da917c9266e857113e56815a8c6759f97df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4225da1e66351f3b19455aea4814bae36e6a8f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43ebfc26397edc8555f718f01bb9ae03a2d8ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4f475a7df199b3106f622a3a825ff399d4dafce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd559edbd5f09efdcc22265ce436dbe00c564d59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd67fb7a441f1acb0fc4b04a981dac2af4329c355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6c386678364b33af7ecf9e2b5c22ecb01d11cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7db9604ef925af96cda6b45026be64c691c7704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdabc97cb4eef6fe685ca1c82429d127998c95cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb42fc72d4a137def7d8652bd1e4841e31ddfaef` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388269 | `0xdbc3363de051550d122d9c623cbaff441afb477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddb553dbdcb1783d3985ba821a5e256cd3361941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdeabcd947b720a5dca825d82a2ada21d90097208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe2868b01431e94c09658e81eda45d0813646cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfecf065a2442db9bd16946ccf0cacc62e01fb9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe018e678f72f330a8c8c95f89b0eea7b0e5f67fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0bd7601908f0156db9a02a79a12b2969816d241` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe276993bccf1a56264ca5c0c3eace643eab7f14a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe376e76d5e9117dab657b565a1d00edac4c1c414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4608365cae8202bb0b3646964ee845455f31f67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe558ecb6ef2fc9b83fa19ff06e0b45b4ce762e9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7ab07d7eeb29031e7d2ac083bf0d2ef0e415334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7fc2ac2451c8544d1fa2851d67633ace507bd7c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-388270 | `0xe8038228ff1aefd007d7a22c9f08ddaadf8374e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe831f68cf4481dbd6096baf53f36dd597319490d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe87d8f52b730db026ed1b0f15a2bd6380bd6b057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea16c1144299b4a181ee406ce48b228023ea0e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea38dfa108318288f36f13d06e821a64acda8320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeab1aff0b70258be3e11d62f7944c354b36afd64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed510dea149d14c1eb5f973004e0111afdb3b179` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeda89ed8f89d786d816f8e14cf8d2f90c6bf763f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb6c16e2970431d227fcf27ed42a3124ea733d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef13c30f797f22b4fbb2a3155fa0ee287a5215a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefe0c499d6dd699c14c244bee8ff2e6df93fc2a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf00ec2b678cc1c8591c133e2235b024c4b8a2d94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf031dc504af71c5b008382da0dc3029a1fcad4cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1bed40dbee8fc0f324fa06322f2bbd62d11c97d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1fd29270e61d4a7885e9b4ef6476daf2ab6f85d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf22fcc90e72e30e78097fd4fbe03b78ffccba2ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2586daabdb275417216ff5f222b1b35b29ced18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf29a6479402e6cd278499c4f48c1e2a057ae6116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf34c43452b59c025d7c02b8ac3972f6fad933cb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf393d241258164e9779972447284fc4d47c3b4d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4996396e7fedd0017b52873037034e5eb8af737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf64bae65f6f2a5277571143a24faafdfc0c2a737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf69bfdd4247909f0537748a6821f1e967a9a06ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf73622055aea6962623f20ab8faa54a788789f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83b1a1c381d619da71784b4b9eed446ca1ad2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9389a275a3c9c8b380f3cf798a8eb4d3e9bd85f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9627b9874f84cd7fa3530d784158d288f72ff19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa6bf9a30a50ab5a8765e2d76737def913a21a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc4460e7da0f94dbb8b0171b1a9d373ab4559f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfef3a1c133ec4ae6bc8a2cd36f03f5d22d66ec18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffba7ed14e259c92038b6b431732004ceb9f09f3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-388274 | `0x043849686ee254ada46a432770e1a491491fc44d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3222d3de5a9a3ab884751828903044cc4adc627e` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-388275 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4938c803ebe999fb0a5527310662624f2e7a38c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-388276 | `0x68a9ec5b93f04a60c77f486a664f283b2e4e2b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x233db4c5b260cf31966d4bd92c51a9b715d8f884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x32f952b0f16de076996373f8693f6f2eb8a15d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e68b0b81b835a6a26a0c64b95e61ab2728260e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-388294 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81e5c1483c6869e95a4f5b00b41181561278179f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9975bf0e147dae42bbf6fb273455dcc328e378e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x046056ca3a35e8783dd4f8459c0d8eb83404b3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3a987e0c47488445e1f704cd0c7c681b699cc0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4825f4a3215d853cbdc09e6694446ce9b963aa6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x50c81797bf5d8b71f2815090b7f3e8cd44701af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6e401189c8a68d05562c9bab7f674f910821eacf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6fc178d2e40f47233960b8e784b64dcc6ac556ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x7dbf4b3afa13f2b68d3d607beba2fd8cf5debc5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9df62386d2a402dcc79cda4506cd4812ce3b71da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9ecaf80c1303cca8791afbc0ad405c8a35e8d9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa5741d515069a8e302833c5fda740fc6be238c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xadab19d829377f8df7cfffef3dc07f810eca7171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xae4646401c0245a96928ec39e1ae69dac7f6a4e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc54fc2956f7402e723f7fb429bb2a9751d286b3d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-388277 | `0xd75787ba9aba324420d522bda84c08c87e5099b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x2b1cbd412565c0a2d32e62ab7304bb464c644cc1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | manta-pacific | unit-388278 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x5c08bbc2c47447854958060725e437e6dd003332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x68a9ec5b93f04a60c77f486a664f283b2e4e2b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xbcecbc9f24570f039e4e822de590365a99e15a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xe119d214a6efa7d3cf60e6e59481ede1b0064a6b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | x-layer | unit-388285 | `0x1b3a9a689ba7555f9d7984d7ad4025574ed5a0f9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zksync-era | unit-388286 | `0x6be2425c381eb034045b527780d2bf4e21ab7236` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | swellchain | unit-388284 | `0xc3eacf0612346366db554c991d7858716db09f58` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-388305 | `0x1bc71130a0e39942a7658878169764bbd8a45993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7781ae9b47fecaceaecc4fca8d0b6187e3ef9ba7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388279 | `0x1b132cbc40d35170d8c46614bc1c2282f458386f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388280 | `0x6aa9cb27581f266fd17895c7fb80cf22cf0b5c13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388281 | `0xa0f9f6d5d6ef60d80517adf3e8ab9d4e0a41557b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388282 | `0xf8e4b7b81dafd1c8642466ab1c12d37015cc1af7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-17000 | unit-388283 | `0xf9336f42a8c5ddde48e148208687444c707542d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2b1cbd412565c0a2d32e62ab7304bb464c644cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x352e20158c9916579b337d1332f462b26a8a699c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x38dd27b51e2e6868d99b615097c03a3de7fa7aa8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mode | unit-388287 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x68a9ec5b93f04a60c77f486a664f283b2e4e2b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xbdf38f9e6bdfcc23668c7464ce5afe899a358d52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf1cccba5558d31628216489a1435e068b1fd2c8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0c383f63426cadaa45afda5214ebcc98a2020e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17534831d52f94eaf3ff7418b94179a6cdf9ae6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3222d3de5a9a3ab884751828903044cc4adc627e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x352e20158c9916579b337d1332f462b26a8a699c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-388288 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4938c803ebe999fb0a5527310662624f2e7a38c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c08bbc2c47447854958060725e437e6dd003332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60ff20bacd9a647e4025ed8b17ce30e40095a1d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81e5c1483c6869e95a4f5b00b41181561278179f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x85d456b2dff1fd8245387c0bfb64dfb700e98ef3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8eec14b9464583f4414e250a13b75cce560aaf19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa88845af0d087ce8cf2f6d7d7a674154b21f73a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb76ccd027f7a9e82d2d0aaadafdfe83081758c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbdecd374f1eeaff3250f368bfb1cb069a2701e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc922e46659821600d4f2cf5431132106b1ab8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde18b909618d6a71aabfcbfdb66dc39fd2b29c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdef49ae5fdba8f31bbb44be6e233f6aff02918cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-388289 | `0xe119d214a6efa7d3cf60e6e59481ede1b0064a6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf21bf2bd1fd02f92397a09f77bacb080865e6ac1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hemi | unit-388290 | `0xc3eacf0612346366db554c991d7858716db09f58` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zircuit | unit-388291 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | zircuit | unit-388292 | `0x571405d597091e8728d8240f558bac01275e8659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x32f952b0f16de076996373f8693f6f2eb8a15d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x352e20158c9916579b337d1332f462b26a8a699c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3e68b0b81b835a6a26a0c64b95e61ab2728260e6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-388301 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4938c803ebe999fb0a5527310662624f2e7a38c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5c08bbc2c47447854958060725e437e6dd003332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x81e5c1483c6869e95a4f5b00b41181561278179f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | linea | unit-388302 | `0xb999ea589e0a1cce9153601dac2d6e203c2fd577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbdf38f9e6bdfcc23668c7464ce5afe899a358d52` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | berachain | unit-388303 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2b1cbd412565c0a2d32e62ab7304bb464c644cc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x30c2b5f5c74b855d99792e485bdbce1dd2f2e1a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x352e20158c9916579b337d1332f462b26a8a699c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x38dd27b51e2e6868d99b615097c03a3de7fa7aa8` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | unit-388304 | `0x4186bfc76e2e237523cbc30fd220fe055156b41f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4b9c66c2c0d3706aabc6d00d2a6ffd2b68a4e383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x68a9ec5b93f04a60c77f486a664f283b2e4e2b72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6daf987d3486c65ff5bc1c5ae40fa50b6349c132` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xbcecbc9f24570f039e4e822de590365a99e15a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x1237d9538b400233d876bf7cbefa3e5b1d9e62c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x13cc521be923f22eda8339d89d929cdf52f03b2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x3a987e0c47488445e1f704cd0c7c681b699cc0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x4825f4a3215d853cbdc09e6694446ce9b963aa6c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-388306 | `0x4ff0b2caefeed2906e96931ad74e265ee2abb61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x50c81797bf5d8b71f2815090b7f3e8cd44701af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0x7adfb5edf9d68e3c6c2de523308ff2eff9062abe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-388307 | `0xa321d2a72db265c04d5c1318ed69a719681bbade` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xabaad1bd3e221cc213e2b73e3326f0adc40d4bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xadab19d829377f8df7cfffef3dc07f810eca7171` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xae4646401c0245a96928ec39e1ae69dac7f6a4e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xb95d5a07b925681452dfa66b4ce17941e5a7c84e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xc3eacf0612346366db554c991d7858716db09f58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd0ac0bb79df4043a7ddda4e61506da382174536f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd2e852577b2510877e276b46c2cbef4c58f83272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd68b0a078a166d31cedf312d92a2374c897bd52a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xd75787ba9aba324420d522bda84c08c87e5099b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe15109d97e84caced271502c5d1dbbc50a4d6b0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base-sepolia | n/a | `0xe5ca826202846363ac1c3f04598a9fb3a85ed753` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | scroll | unit-388293 | `0x65421ba909200b81640d98b979d07487c9781b66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xc9bcfbb1bf6dd20ba365797c1ac5d39fdbf095da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388295 | `0x0b4acef96828f28bbebc6a0e5c5c6b2c84919a6b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388296 | `0x335a87203f39e9134fbb336e73629bf0822ba371` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388297 | `0x44167e2db805feb0eca440f695dc0bf5679bd1a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388299 | `0xc114805227947248153478a10638d8e0e93cdfc5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | hoodi | unit-388300 | `0xeb26b4108d216e78d1ea4c136689d8c8f7e59c0b` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 369
- Live contracts: 0
- Unknown liveness contracts: 369
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=369

Showing first 200 of 369 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x00ed1a18ba7968c5f074eaf60371d6309515a294` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x016c5cc0bf9bca4eb1d38b3a80ad87707355255a` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x0379e85188bc416a1d43ab04b28f38b5c63f129e` | non_address_book | unknown | unknown | unverified | n/a | `0x7aad74b7f0d60d5867b59dbd377a71783425af47` |
| unverified unclassified | UnnamedContract<br>`0x03997454268da350a353af07785ed1e2266fac6c` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x03abeec03bf39ac5a5c8886cf3496326d8164e1e` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x043ba0ffaac0db6372e27995eab11321ffe1d1a1` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x060a6a57f8ce8fb99cbc8d4fd6b73c36eebd2c30` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x074791f014725936ee721520fa896634860fbfd6` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x087143b8e69da4882e6c310fcfc36e52310021bd` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x09134c643a6b95d342bdaf081fa473338f066572` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x09917e5e8466b667f8cc36b74681fb103d5edd33` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x09a54470a717932efd6880164f53a10de3108707` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x0c6937e884fcb4b376de1f957770e2e1f8262986` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x0c78bba53c53c4f9dbc8da2c57b156e4596870ed` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x0d4fefd3c9ba9214c2412c87bc140e1766ab584b` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x0d6cbc29b41d5cea6653eb638b5ba77a88f9586b` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x0eafa7b6a3bd5fabb9e0c28f488b3d9e28f9c1cd` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x0ecde3f414d1a245246d121e37191d9a63684e19` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x0f9479226734ef4fd25b36470584f8e1ab620e0c` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x101152a10262a9fa8f4ed8399cd74e2ff9b45fbd` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x106c7053fbb563bcb06b723072bf0628db69b27b` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x1082a48779188c53507d28b1d2a4b17ad839be6d` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x12c391f1bef4663532ffbab2664138f290291fb4` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x133e3cc259eaf5ddcf3684dff62965243fbb6150` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x13576cd2b61e601d3e98b5c06ef81896c9bbb369` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x141f6c276d7a1937603667c72a7688edbda16728` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x144853f68b948625bbd2d3bc50431547c3d94221` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x1534c9c947fba16ce3a6ca2c204cf47b190cb262` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x1546dcccc2a5cf9730142cf1fdc9374b2c4a4790` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x15d5b49167289481122289f5cc0b2fca263875fe` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x1b5a9e31fda362c1328d8a8d63bbd5ca3a56dd26` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x1bc71130a0e39942a7658878169764bbd8a45993` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x1d0bb74f3822926e0e330d8b9a5f7703f9e8d295` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x1de458031bfbe5689ded5a8b9ed57e1e79eab2a4` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x1edc0e346a178da11d167da58684f8ce7e8c12b3` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x1fc8eebd7e1e61cc2cca005ee0f0d08417e5a2a4` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x201901be4211886b298ac1652b0e916f948f52f0` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x20b8b922bf59adeb4c4b9222c580079da36694c4` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x237337c27128d5506a67d2db61086c7e3231fcab` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x24dc76ed8830090cd9661b42c741916fbbca88de` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x2540939c846b8096534b0dcc6ebb6ebdf3ae1f3d` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x266a15d35327406c51789a7669465505abc44abc` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x27fc118493fae6340fbfac77e921c895f2c5499c` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x2a1d74de3027cce18d31011518c571130a4cd513` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x2ad42d71f65f76860fce2c39032def101422b3f7` | non_address_book | unknown | unknown | unverified | n/a | `0x7aad74b7f0d60d5867b59dbd377a71783425af47` |
| unverified unclassified | UnnamedContract<br>`0x2df9361085eb84d72c4c3312439621aeb4957b9a` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x2e2ea204dd537ffae9b2d6915b910af1ef22cc01` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x2f13d04b79d484b04358f64820cdb2725041e0e4` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x3073cc90ad39e0c30bb0d4c70f981fbd00f3458f` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x30c2501b3b2031fba3000daa6f8ed0a42fbbb3f0` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x3151293f241bd7391f4ecaef206607b59f424417` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x315ae796d37c3dfe3046b772229620f22c5220b2` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x319eee64d20a01e4a62215a35727fa8f2f35cf8c` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x3433d140497b54f0a9a73ae39e97cdc657d5a2e6` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x36a5d40ac8acb7cec9c0e61c4d1fd338ebf6e414` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x36ee796f8af996d26efb93478ba91d3f1331c1ae` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x3abc7ef589c31b53290bbb693ce90dd5f64248ec` | non_address_book | unknown | unknown | unverified | n/a | `0x7aad74b7f0d60d5867b59dbd377a71783425af47` |
| unverified unclassified | UnnamedContract<br>`0x3abe33f1995109d7cf5c89dac472ab003bfc44a8` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x3e2d74b2c9cc312fe68b866609efb603f78c61d0` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x3f80b1c54ae920be41a77f8b902259d48cf24ccf` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x3fc9a1ac80c1335209f41dc4e31be6531d7daa65` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x41d66722b20e761b067df017457d956d27c53225` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x425d3efdb06639b4e5303082a39880143c2332e4` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x4548a9300d890f6a7c8a5da563bd2ffac4ec229d` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x46e43f36ecce20e4a7f6e02b9371b6ba6fdac1a8` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x47a20223888770c35fe243ec86df9277cdbbb017` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x47a368d5eb1015f78be791a2877fb25db9c6e282` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x4996f98a8539b0c87bf0eb69466f5af2c1f6314f` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x4a92f998d8521a4280230a823b5922a0511cbfce` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x4abef2263d5a5ed582fc9a9789a41d85b68d69db` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x4b9c66c2c0d3706aabc6d00d2a6ffd2b68a4e383` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x4c22ffd479637ea0ed61d451cbe6355627283358` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x4c4cf3fd21d9540c5337be8dfa2165ab49d541b0` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x4cb8d6dcd56d6b371210e70837753f2a835160c4` | non_address_book | unknown | unknown | unverified | n/a | `0x7aad74b7f0d60d5867b59dbd377a71783425af47` |
| unverified unclassified | UnnamedContract<br>`0x4d9663669a9e64c7523f3f815d225af1630f3850` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x4f4bfa0861f62309934a5551e0b2541ee82fdcf1` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x506b066a118f8ef5f1ee016e2c52bd54d6877ffb` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x50f88fbbc50629b8b37f68c4dc28f712a8bf679b` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x50fb23fde4d469698821792d4a34863dca3eb5e7` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x529d520c2579ce24de33198bf00c7a8460871475` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x52d26e5988cb034e61e9cf14c617951f6e3d3eee` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x5333869cff4713e9fa547095276bf1c9217da6f2` | non_address_book | unknown | unknown | unverified | n/a | `0x7aad74b7f0d60d5867b59dbd377a71783425af47` |
| unverified unclassified | UnnamedContract<br>`0x534b51ba0fd7831394416681ce7cf401986332bb` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x53b1163ecb64dec618f56a1544147506b9355e25` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x53df50dca8a30355a1f3272bd9095c3bb4c374bd` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x56187c539da2000e1fcc8acb06f844da8afd3a26` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x5663ea61dd44986bb92fca764d1be02bde08399a` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x567bcc906ebe21dfeadc689102854909109df226` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x575331ee9da4d2731ec722a1beab6c373a6ac6cc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x58167d5c3b35aad45b00465244486554c69e093a` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x5880211fa1089dbc6d400c05eeeedae27cdd9104` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x59e8537324a61d76329630e9899f91c7521d74af` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x5a818a7c418f67442aa450d3347d2785742ee148` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x5aaf33395feaa1d342dcda6198126b40959286a1` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x5bd4dda54727858f2ec15611162f5a6cb4fc98b4` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x5eb08730b36ccbb9b1e0b8afa561e8c987d584c0` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x602c00e3dc1badd42a3d796012d3b3dd9ffecfce` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x60ff20bacd9a647e4025ed8b17ce30e40095a1d2` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x615bac1593f20d853b0946d16b81200d9b9f96dc` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x61cb8bf7ecc1b04bbcbcee48320bdfca8151e211` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x62082a614c2fa1016f01581dfcb96dab64d84383` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x62e0b431990ea128fe685e764fb04e7d604603b0` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x6425b95d71452e95ced7e5e620fc68561b5ba952` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x64b7764e73a83eb1d921b43eb87bc5e0efdbd712` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x651efde2f25aca6386f4ad0a0c56c3c41a819f0e` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x67b12264ca3e0037fc7e22f2457b42643a04c86e` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x6894ffc7137fe5707eb23db39825dd20c6f44ea2` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x68de8884076e4a824704dcb5c7de032e80d42dc2` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x690b93ce2d6827e48dcf74d051bf627e03dfb038` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x6932e85964fa31f70ed9debe63d9d969ad00f112` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x6a3fae250723661c569c19eabe7b34c6b838cfcf` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x6a8f39bd3d79753633b4392ce4f9f319fe3186c3` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x6b54297879249fa16ca7c106a7a66bad168ba7df` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x6ccabba6100be33ded45bcec21df92dba9dfe250` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x6d107dcc9c05ad4f8cbdfb706be561ff00f5c288` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x6d39afa5bd1bf684220f2d956ec7abffc89274fe` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x6f54b0882d690a87ad9abd669acd2ef500ed63c1` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x6fc178d2e40f47233960b8e784b64dcc6ac556ac` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x708bf417560d0074176258bebcef79cd2a7b4aea` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x70daf8b0bfc846cc98b71d2f8ffdc91f4d2bbd51` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x70fcfbb24663bc76aaed7ead56381711b22be90a` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x7159107483e623707c18c6e06cbc095bd0717783` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x71e3628b2cb771b7219008bc90a451971df0b1fb` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x7229e34dffc6338f2b33a22d40a9657d4e08b0e9` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x7251e1844427f08b4bd64a06ace37639fab273d7` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x75e7b93ed9110bf176f6eaa9eadee9a6b75bbfae` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x75f5a270ccfc85134555dd37ea8a518dafdf36df` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x77287266e0b7fbabe76c58e95ad954489c2bf923` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x7848f1b36d469dcb0e069255d9d98971a04b7a7f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x788f0b81809be6f5e07f277a676c7f392c3854aa` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x79a0a901dba2ee392709737d7542a1bc49ca9ab2` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x7adfb5edf9d68e3c6c2de523308ff2eff9062abe` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x7ae908b02b6874f9527537979db22f13d688e21f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x7af4730cc8ebad1a050dcad5c03c33d2793ee91f` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x7ba00d4e2d656461ed06f940a72670802f020514` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x7bfc9a651cc6f5bb677eecd263b2b8c390853d0e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x7d6a6b22dff8039943d1ddb90073c369a0703f6b` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x7d6dec1b09007d61f2d32df92433229df700924e` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x7e910f329fa7865349723d41d751ba0bf38fb647` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x81b08a0d57ea284b282b12a574139db0ec862439` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x81e1112966f2e6115b5b3d2efd94cde8ae57e793` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x8322793ceb2d8740ad83ed431e69ae87fa1a86ab` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x83b7fd3d92ef0340c7f940fd2ff5e762cb0878a9` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x84645f1b80475992df2c65c28be6688d15dc6ed6` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x84ffdc9de310144d889540a49052f6d1adb2c335` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x851f8c43796f3e73b234432dae4411c7ccb35dc5` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x85a22763f94d703d2ee39e9374616ae4c1612569` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x85d349864f717bd3d3a6576aedaca61002acece6` | non_address_book | unknown | unknown | unverified | n/a | `0x7aad74b7f0d60d5867b59dbd377a71783425af47` |
| unverified unclassified | UnnamedContract<br>`0x868cef33e29bf3037b5d4cf5c408eaef29d96b33` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x874aff43add7bf5ebcb29d417857d2fa15a7d8a3` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x886558435c5e4c1659b85dd63ab8c70385842670` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x8974a3d9fa43db7ea327d755f45113157ce01b79` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x8b30996ff1dd1b58b7e93ff90c25de679e4d0e5f` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x8b9991f89fc31600dce064566cce28dc174fb8e4` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x8c57cd57634579116a192b93575f7955642f2e2e` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x8d80ad529f68b11c2492301ba4fb78e5a654c206` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x8d9cd771c51b7f6217e0000c1c735f05adbe6594` | non_address_book | unknown | unknown | unverified | n/a | `0x7aad74b7f0d60d5867b59dbd377a71783425af47` |
| unverified unclassified | UnnamedContract<br>`0x8e2fe2f55f295f3f141213789796fa79e709ef23` | non_address_book | unknown | unknown | unverified | n/a | `0x7aad74b7f0d60d5867b59dbd377a71783425af47` |
| unverified unclassified | UnnamedContract<br>`0x8eaca66086b70bb61fe07c386c2c7749af426784` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x8f11110ee75d102d0fd948685a5c735bfc581213` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x91d8c76a5d65007f011845eaf79eb5ffcc7535d7` | non_address_book | unknown | unknown | unverified | n/a | `0x7aad74b7f0d60d5867b59dbd377a71783425af47` |
| unverified unclassified | UnnamedContract<br>`0x926275bfdd09911fa51fa407ff5edb5a9de29f14` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x938cf7510ca0b210040f07440d0d7e43a8744982` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x94266fdf200c796a1ab41c5c011ed06ca1bde96d` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x96e63af9ddeea924745ba77cd62a2a2f5885899d` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x97619f93e4d04082e7ec255edded89a6737dcc77` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x97ad8ff124126ddc976d90e522cb26e5ceb357c0` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x97c92752dd8a8947ce453d3e35d2cad5857367af` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x9aeed279c157e9df29a504a8c9c848a5613cb6b7` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x9c739fc76fed6cfa2dc0b45c2a6560c5b08e1b49` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0x9d4c3166c59412cedbe7d901f5fde41903a1d6fc` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x9d7e1305eb116eada4000212145db0494e66c3c2` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0x9dcc9f9d4ce6efc5fc91f671bb24409ea5edfa74` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x9dceaeb1c035c1427e64e6c6fec61f816e0d0ff5` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0x9e02faf37d05540232590e94f9e7afda64673a50` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0x9f0491b32dbce587c50c4c43ab303b06478193a7` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0xa086bcae7adbf64c64b4613770d3ff59645ef553` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0xa0cd84c29c5eee3780bd88bd35c0681f1eb6360f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0xa18b0ca9806e4873aeaeef7d1e939856caf8bfd7` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0xa1d96cade4f6e087bec92ef0c32f0130aca4be3c` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0xa29f97d9a9d6492e764b2cd417e7e2e49bb1223a` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0xa29fb8f34f8906aea9ad9dd9c1f17db4439cf9fa` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0xa2aa24e91a345b3dd8652f304390203d0e1c4d31` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0xa2ed599de0b8663b3381b48c9b10331c2bac241d` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0xa32369f9588efaa3aeb571124e63ab4469a56815` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0xa35b1b31ce002fbf2058d22f30f95d405200a15b` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0xa5e7417f17bc4ff78395b8a185366554159e5883` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0xa7d877332230ee1d8af941ca6ef9217be6b6762e` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0xa7f3a4d8395d62df12bf35afb4ab8db42f12926f` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0xa86f75549c21f815f61053a39b0d97062ff6dc53` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0xa88845af0d087ce8cf2f6d7d7a674154b21f73a5` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0xa8bb6ce4523555f08310e9e4337d26d27ec102ba` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0xaa33241f53fe18d6d2036e4ecf1a837f2020cd6f` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0xaa85cabe1ec07ac588fcdc92a6ff7d40eee33d57` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0xab102e3073116db80cbb30e9326b1a6f12a014c6` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0xabb0b39351baad728b5d4ca26b12d6571a2cd1dc` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |
| unverified unclassified | UnnamedContract<br>`0xac1fd5787c51576058a913ea42f823bbff76be06` | non_address_book | unknown | unknown | unverified | n/a | `0x5db1955f51f892ce1bbef3ecec8a46b85fe75f27` |
| unverified unclassified | UnnamedContract<br>`0xacc5263f9bede117b4e438726a0cb7a51d02a075` | non_address_book | unknown | unknown | unverified | n/a | `0x1f7a03b70c5448dfd0a2c5a7865169253c2c769b` |
| unverified unclassified | UnnamedContract<br>`0xad22b3d194df228c2bff95de430ea4b4fc62bd43` | non_address_book | unknown | unknown | unverified | n/a | `0xc6160f5bc3c673ac390f11c492e8ed0d0693579a` |
| unverified unclassified | UnnamedContract<br>`0xadab19d829377f8df7cfffef3dc07f810eca7171` | non_address_book | unknown | unknown | unverified | n/a | `0xcf7bf9d3a485b9c4d4a38d65e4d68e081a585662` |

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
| needs_review | 442 |

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
