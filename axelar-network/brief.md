# Agentic Audit Brief: Axelar Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 5 audit(s)
- Eligible audit results: 63 (5 matched; 58 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Axelar Network (`axelar-network`)
- Website: [https://axelar.network](https://axelar.network)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, aurora, avalanche, base, blast, bsc, celo, ethereum, fantom, fraxtal, kava, linea, mantle, mode, moonbeam, optimism, polygon, scroll, sei
- Contract surface: 369 unique implementations (370 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $132,554,859.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Axelar Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, fraxtal, kava, linea, mantle, mode, moonbeam, optimism, polygon, scroll. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x83a93500d23fbc3e82b410ad07a6a9f7a0670d66`, chain 1)
- UnnamedContract (`0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c`, chain 1)
- ConstAddressDeployer (`0x98b2920d53612483f91f12ed7754e51b4a77919e`, chain 1)
- Create3Deployer (`0x6513aedb4d1593ba12e50644401d976aebdc90d8`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/69 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 62 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 303 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 4 of 369 unique; 365 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/15
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 354
- Unique implementations: 369
- Raw deployments: 370
- Audits discovered: 63 (63 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/axelarnetwork/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 22 aging, 37 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ackee Blockchain | Tier 2 | 2 | 13.3% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConstAddressDeployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228615 | `0x98b2920d53612483f91f12ed7754e51b4a77919e` | ✅ Audited |
| Create3Deployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228613 | `0x6513aedb4d1593ba12e50644401d976aebdc90d8` | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActionQueueUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x10087e44d399345b2f959e7c3619d57a73399afe`; ethereum `0x4dbd67c4628c99c1aa4260ff92cf193f5f3b835d` | ⚠️ Unaudited |
| BondSaleV1Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16b6ac8f9af81a01d9ff14191842418ebdc91b4c` | ⚠️ Unaudited |
| BurnableMintableCappedERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x467719ad09025fcc6cf6f8311755809d45a5e5f3` | ⚠️ Unaudited |
| KIP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x946fb08103b400d1c79e07acccdef5cfd26cd374` | ⚠️ Unaudited |
| KIPStakingSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0611dcc913a9e108fd91eb282e00dff45de91ce8` | ⚠️ Unaudited |
| Nexus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafce80b19a8ce13dec0739a1aab7a028d6845eb3` | ⚠️ Unaudited |
| ReceiverImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x66e9cba5529824a03b5bc9931d9c63637101d0f7` | ⚠️ Unaudited |
| StakedUSDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e9bdddbad724b1cc3bfe521d8e2c5f52a887a9f` | ⚠️ Unaudited |
| USDX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3527ef8de265eaa3716fb312c12847bfba66cef` | ⚠️ Unaudited |
| USDXRedeem | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eaf6fe1aed8631114d1de78317982ce73d82f7b` | ⚠️ Unaudited |
| USDXSales | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8598348b2cb4f62ec529ad52ab5e57b52ae3065f` | ⚠️ Unaudited |
| VEKIP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c328a18675a94775ad28d1aa6f47b755bdca12c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (354)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dfdfa471b79cc9e6e8c355e6c71f8ec4916c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08eee5214953f8f54e04c3279ce47548700affad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bb6ef61de7ba74c669ee090113eeeb9ae3be371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d4cd2c24a4c9cd31fcf0d3c4682d234d9f94be4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10d96b1fd46ce7ce092aa905274b8ed9d4585a6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15b2838cd28cc353afbe59385db3f366d8945aee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17853c307dc3ebed36cdd9629e8b262b475075d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19f7f071dd782f66fbcb4165b27d9b4217ee2973` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c728f1bda86cd8d19f56e36eb9e24ed3e572a39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e91f826fa8aa4fa4d3f595898af3a64dd188848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x212207006e5ae344481fa34a6f4960eb0f302ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228b92510130ec2e09c6d5645039c8cb834ad42d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22c2cfee24ca23b8e2ac4ffa07aae3be6eed1b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25970282aac735cd4c76f30bfb0bf2bc8dad4e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25dd5bc0fd84db78fda975b7decc5b7882f3da3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2837c77527c37d61d9763f53005211dacb4125de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-228611 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30647a72dc82d7fbb1123ea74716ab8a317eac19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3218996f84d2596601834f197e29a669d820efd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3563cb49a1c3fa725f1888486754758d120b2bf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f74bad13019612b33e359a9b263e904a95ec9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x383006138d9c11d2b07a37ce5c45412afbaa8695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bd58623f274d4a9806d27d4cc1ff6e840e946df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3cd782379ce010fcda43983b490a99f43aace0c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f63e5bbb53e46f8b21f67c25bf2dd78bc6c0e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4154cf6eea0633dd9c4933e76a077fd7e9260738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4186c5aed424876f7ebe52f9148552a45e17f287` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46e1f8e746ee9037fa42b3a718dce6c36cb3f16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47480d53520f322791775f3a2fb766799f012c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480cb1998abee78182864ece43e21334b3e200d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48c59199da51b7e30ea200a74ea07974e62c4ba7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5e03065bc52cce84f3ac94df14bbac27eac89b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca9123afc43dc9dde52a57a51afc44324138ded` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cd1bd604b0d0b737304360b6c4e74544b795af3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-228612 | `0x4f4495243837681061c4743b74b3eedf548d56a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fb30c5a3ac8e85bc32785518633303c4590752d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50b5a9f47cb0f363ef99bc26dac8551c3cb1d523` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x539c54bd78b89079f57560ea95080da7a76d81fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54d06a0e1ce55a7a60ee175abceac7e363f603f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5846bf78fb95712f394ba1aba45ecf262f7209b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59c38b3a349bcf7e46b024cddfb4778229609c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5be3f2a2478caa0afe6d96ab959f133346b9f12d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c8eb57b44c1c6391fc7a8a0cf44d26896f92386` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ca061d60d1f10732f42fdb54eb1f4ef9065b7ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62aa1d6c2c591443ee32066773eb7b7be09e063c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x657bd4d86c8aef3ab9c145b1b84eb2d661428ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68334586b602dc71a32de73000f0b934fc1734bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69ad1387da6b2ab2ea4bf2bee68246bc042b587f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6de3a957b0344e6adeeab4648b02108f35651fb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6efa260a268e4afacf7fb91a6bf5f5b37379bf61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f05662109b296afb0f02bf490300c6b95e07d3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7046b0bfc4c5eeb90559c0805dd9c1a6f4815370` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71061e3f432fc5bee3a6763cd35f50d3c77a0434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72b1a3833c34d991916d104cf351eaec1c2e3f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7594ae023979e30a44a2ebff64b7c82de3e46136` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78befca7de27d07dc6e71da295cc2946681a6c7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a811a7525928f22a2da97e94750b94215c73e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c4cf0442dbf77f56a4ba8ad2347f136dfa5c78e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb1576dcc0d8fcb32ebd21204899ef6c0270eb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d608abcf9a3be6b869e745e6f8db3434877d60f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ef80c411774a9bb8cb42845e75afe19744f8edc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228614 | `0x83a93500d23fbc3e82b410ad07a6a9f7a0670d66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84e563334b706b5d823b0e0a62a724dd932ee6d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87a59a9f2c2caf9c7ec3fa62d7496d9fc7449b01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x881c72d1e6317f10a1cdcbe05040e7564e790c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8892d7a5e018cddb631f4733b5c1654e9de10aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bd8ec1e69e19b23db4e9cb31472f143d0e093cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dacbe2b439e66f7940e7ca160685b5180476958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8e6b93ff8a2a77cfdeb30048cbe460dbe134f157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90ae544e8cc76d2867987ee4f5456c02c50abd8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x931420077fc8fb1f7218a1dd23043990bafd7df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x945facb997494cc2570096c74b5f66a3507330a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x968030d6f08f1b7515ba7b8ba1ff10557a69d7db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9781c4e9b9cc6ac18405891df20ad3566fb6b301` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9827b882671747d096ce5b2d80a6e1ab126b5883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98c48ff7257e5e562b7a92cc71e0f93f2fe7f169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98c54fd8c98eaf0938c4a00e7935a66341f7ba0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ab5868f745d8fc6d45ce86dfe057f5b738c90e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be4574ac3c3b7f8ba88fa043e3ecf870c3ca840` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-228616 | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0f4996fd83b211303e13765b3f18418101f9ddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1ad7986ffc951063702e5fdaffd4ae83bfad7dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa283fcb3c2b8dc908f93f17627e9f90fc8559d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa607e2aed0d349297faecfc6750b533a7b170513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa64d0be31db79e0441da56f0adea1f3a59aa20f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7824292efdee1177a1c1bed0649cfdd6114fed5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa88328ed84c31c98d81237c354cc852a5022b9ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa05a0949a35747bac858aa6110d3fae1edec8bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabcc93c3be238884cc3309c19afd128fafc16911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadeedd3e5768f7882572ad91065f93ba88343c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1ad72924cd5438f74c6bfc8a6e5c6032d99851b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-228617 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61a6f928b3f069a68469ddb670f20eeeb4921e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7c77da6e0a8b4f63384fce953327af59c0d5b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb83a5a51df21321b365c918832e7e8f5de686f7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb128bc208c45b3dd277e001f88e1c6648060c64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb90d06371030ffa150e463621c22950b212eaa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc421722add7ad3cf23e7bbefe709330bbfd6188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd3e8d41874bc123fb6913a2a6c6c8984c71876c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc18d923dfb17b2bc06f5b0fd8e99739fa0198d63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34e9700ee09b8662c3c4667c134ef43ec7f2516` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce128488b560632056d9811dd24a59688dd33dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcefcbb45be41331337d49a131faf424d1e50234f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf3f73290803fc04425bee135a4caeb2bab2c2a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd124b55f70d374f58455c8aedf308e52cf2a6207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd36050b5f28126b5292b59128ed25e489a0f2f3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd409c506742b7f76f164909025ab29a47e06d30a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4a510b9e5b41a17f4e2e97477a468f6be85b102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd55684f4369040c12262949ff78299f2bc9db735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7c346c228bddd8a6a4c1a69e6cc82292909dcad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda13e3afed9c112bd906c732684a49dd65b178fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda681d409319b1f4122b1402c8b5cd4baedf9001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc66115be4eaa30fe8ca3b262bb8e3ff889f3a35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0d0d052d5b1082e52c6b8422acd23415c3df1c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe15aad5d6b7433e5988415274529311f6bf6e8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2f2a5c287993345a840db3b0845fbc70f5935a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4c5b1765bf420016027177289908c5a3ea7668e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe595d67181d701a5356e010d9a58eb9a341f1dbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6e6e25efda5f69687aa9914f8d750c523a1d261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7e41f1b97f3eb2f218d99ecb22351fa669d5944` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe88ab68cd69e92294fcc3bbbd894fb183197fa39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb1ef7358a9c52c488cff20b046dedac8807c845` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed9938294acf9ee52d097133ca2caaff0c804f16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefcc516f6821603b9b9b451efd4e5e7ed878a25d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0239157ba67fb793ac6833056de15ce5c7388b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1049aed858c4ead6df1de4dbe63ef607cff3262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf38522f63f40f9dd81abafd2b8efc2ec958a3016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5ad2bf1b1a74c1c36503825cf1a07ac4a352107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf617346a0fb6320e9e578e0c9b2a4588283d9d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6e53b3aae671319a0f9d9ca7fac5f41599bc7a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7575d4d4db78f6ba43c734616c51e9fd4baa7fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe842e95f8911dcc21c943a1daa4bd641a1381c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe2cdce7babb1422d5976c2fc27448f226b6bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05823c334150a48acd5d325fba16147c21ba3653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1a920b29ebd437074225caee44f78fc700b27a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-228620 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5dc505ec8a7a7d59b932e7015fcadf63fced35cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8a156bca562fb75385c4d41ea6903e270a34b727` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-228621 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-228622 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-228623 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-228663 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-228664 | `0x304acf330bbe08d1e512eefaa92f6a57871fd895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39edb9188032d87657e8683724c11b1486cc4cb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-228665 | `0x4268b8f0b87b6eae5d897996e6b845ddbd99adf3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f4495243837681061c4743b74b3eedf548d56a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59c38b3a349bcf7e46b024cddfb4778229609c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x65150789c11516bcfdde2c07a57d30dc73e81032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87ea591f65a73cc286b0a521cff86a26232b2e2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2a4f24edcb0f66cb23c07d530d33a10874860a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4affe1a9c32ecfdd7443cd2e1c9b16f9f00644c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb531ffa7dfe37787d38b7b48669d65aed04c791f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-228666 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb92616a93d9cc8609a1bb797a2a87958fdaeb22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x037093c427da5a979e42e265aaef7b198a145c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x149faeaed5f18a54c680068df1f71574be23d7d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-228628 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39d940d8c48db45cf35ecfe379850c6a65709ad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46e1f8e746ee9037fa42b3a718dce6c36cb3f16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b4e3f79c29edfd13eec0a30be982d6852ed2bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e73f2caea6afa0c3581bdc559eda76635158a8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57c3b74b1b0243806138480439504f0387b106f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x68d0a3311c6184b7bb6ddbc8209f4a3b12978103` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-228629 | `0x6f015f16de9fc8791b234ef68d486d2bf203fba8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-228630 | `0x750e4c4984a9e0f12978ea6742bc1c5d248f40ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a811a7525928f22a2da97e94750b94215c73e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8081b91e3461fb1fd8a7bad1009f2feb4e8f8429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x824673d486197dff394b24975de3fbb066f5757a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83f9534a7a096059c22533b827afaa849b8a916e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e8ca4ee86040e437ff21af10cb3679449bdf98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90cce981d7950d1c351823bac4392fa3115c2e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b96a29051b0d0f3254d409bbda8a95d476e656f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9deeea89a22919d67b70bdafbf5da8c3fd2402d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2b74ee32a5db48a2312bc2082c730cecc1241cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7e4add7924e05b55522b05dc562da6cc718be94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0bc35bdcf789a41e0de32f2068d4bc8a7b0ba12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb531ffa7dfe37787d38b7b48669d65aed04c791f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-228631 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb65388a25b7eafa7998c9481b4940b4c9a02f4b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7d17c37a2a5b417ecdb52270d9d20401717aa34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbb623a161aaeda22f0853ac6499350fcb543af45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc099174695bde3b984adcecb2b1bf0b042467cf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc12ba15b51ec6d4f6c48515b384e9351a46dc8c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1e67656b296167dd51f03fb04db6049a24b452b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc25ebf6b05719b04d958159c912342e0ee67d893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8e0b617c388c7e800a7643addd01218e14a727a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd6c31bd7d31f94b8d094acf555766419cd3c0008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd829a9c54c176eaeb20fdb97eb9b194de56aa4ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf153ded574381a8a8abdb4659d4331db6a900c8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-228636 | `0x1b6382dbdea11d97f24495c9a90b7c88469134a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-228637 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-228638 | `0x304acf330bbe08d1e512eefaa92f6a57871fd895` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-228639 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1a920b29ebd437074225caee44f78fc700b27a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fraxtal | unit-228640 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fraxtal | unit-228641 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fraxtal | unit-228642 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x037093c427da5a979e42e265aaef7b198a145c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x09237ab3aec942355e5ff3fb908b9ccc2e1eb1ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x1a634a6239053d11e4fb710494c47c969261797f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x24c004c6ba02f166f36647f0ccdc8b0d2b83d6cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x24f8b66ef108a409d3708f4a59b8096b6f0e6e0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x27927cd55db998b720214205e598aa9ad614aee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2879da536d9d107d6b92d95d7c4cfaa5de7088f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x29044df6e97be598df1b742b18ed8f10c6444323` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | unit-228624 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x43a7ddf2d6f7cc8ec080a19b4a89f4b867c109b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | unit-228625 | `0x4f4495243837681061c4743b74b3eedf548d56a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x57c3b74b1b0243806138480439504f0387b106f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x6006bea46f180a38e7aa058efbff5cd557a55d86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x62277f080f9e165b237087424da45e5f3f723f49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x651c804d8a2f4a0ec047ae2355d8b88b6f48d8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x7a811a7525928f22a2da97e94750b94215c73e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x81fa2a3afdc1cc025ef4c98847b066323fb8415e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x8e3d5deeda4413f1bf1164d8dc7e12753c13ba2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xa1814b7f1bbae6d76c8b6b13b83271245b0c1ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xad81fd12bc793ebb4c8f11035a5ca086c0be062c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | unit-228626 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb856810eb4780ff26bc4533ff45693a9d44dfa8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbeam | unit-228627 | `0xca01a1d0993565291051daff390892518acfad3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xca7b54a3e9671e43a93d89c564355eb1a6fcb663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xcbcd7acc8a65c163a23c75be08fc8d6fb5fe3dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xd7ab254f74eb15f383c6ee8febb3f5359900d92e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xfc6c7282a8d6f52dddc851081cd26276f68ffc6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | unit-228632 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | unit-228633 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | unit-228634 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | kava | unit-228635 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x05823c334150a48acd5d325fba16147c21ba3653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1a920b29ebd437074225caee44f78fc700b27a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-228655 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5563d10e48d9b9b8000e1b60692a7bf16be94a83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8a156bca562fb75385c4d41ea6903e270a34b727` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x999117d44220f33e0441fbab2a5adb8ff485c54d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-228656 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-228657 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-228658 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05823c334150a48acd5d325fba16147c21ba3653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1a920b29ebd437074225caee44f78fc700b27a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-228675 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8a156bca562fb75385c4d41ea6903e270a34b727` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-228676 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-228677 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-228678 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x23f0e8faee7bbb405e7a7c3d60138fcfd43d7509` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x24654078a8e043e8985d962a5100cdfa2026f92c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2b9bb0042db2f30650d73bb83cbae584807d2fe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x35a58beee77a2ad547fcded7e8cb1c6e19746b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x36825bf3fbdf5a29e2d5148bfe7dcf7b5639e320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x41c9e39574f40ad34c79f1c99b66a45efb830d4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x549ebba8036ab746611b4ffa1423eb0a4df61440` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x59f78de21a0b05d96ae00c547ba951a3b905602f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5c470034117339f4426cc1a005543002d333ce75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x5cc070844e98f4cec5f2fbe1592fb1ed73ab7b48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x621330d0ecd449a06b72f41c1a93626ccec53cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x7a7f2493c578796abfba15ce2e914a7a819979b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8250f4af4b972684f7b336503e2d6dfedeb1487a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x8d254a21b3c86d32f7179855531ce99164721933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x98046bd286715d3b0bc227dd7a956b83d8978603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x9fcdcab0a147e799fa866594b2c4c20f4ef29f37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa2aa501b19aff244d90cc15a4cf739d2725b5729` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xa5f1987f5b922f7730d709f9dc725cffb1bf5e9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xb27e5ca259702f209a29225d0eddc131039c9933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xc0f566304a44d27c40d4f81d629520ac4ed1850e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xdd24f84d36bf92c65f92307595335bdfab5bbd21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xebe57e8045f2f230872523bbff7374986e45c486` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf5bbe9558f4bf37f1eb82fb2cedb1c775fa56832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xff255f800044225f54af4510332aa3d67cc77635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05823c334150a48acd5d325fba16147c21ba3653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a920b29ebd437074225caee44f78fc700b27a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-228643 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a156bca562fb75385c4d41ea6903e270a34b727` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-228644 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-228645 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-228646 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x05823c334150a48acd5d325fba16147c21ba3653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1a920b29ebd437074225caee44f78fc700b27a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-228647 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x317642bb2193bf5d7215aff0b103dc74ba1db610` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x8a156bca562fb75385c4d41ea6903e270a34b727` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-228648 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0xc8d18f85cb0cee5c95ec29c69deaf6cea972349c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-228649 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-228650 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09162c3329e8534e0e95ae37e8e7fd47c46b8a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11108b91d1a63e7f03e48be1d61983cb37e323d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x165f0d50d35988f02592c19c15d410e5bf7bde2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a634a6239053d11e4fb710494c47c969261797f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2502e7a3401d9ac9735388fb29c9c803e1ea18c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2700d384c39bbf9565d813b472ee005b383ac1e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28de39a8869ff8b394c7bc658b25ce021869b950` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-228651 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x309f474c1cc46c9c6cbf798e046021dfcc76cb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35fe17874dd1198c882868bf41a739c1fcc3e334` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39f38c99e2e6945a2aa9472384ac24527f533fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3fe06ec37eabc518f88c9c78729d1350e0f5f9cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ff66d99c6ce46555b8e00b571f6d54a2f26e80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40cc65c93c87dbaeda248612c88d4ca2542d7a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4488ded393830639109e9f939e5a38a2e4f8f1b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47e1f636a2c374e8935106593b4fbe0d244df9b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-228652 | `0x5029c0eff6c34351a0cec334542cdb22c7928f78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60d66d75c94038c67c49c65315a16568c008c346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6377d7ddc240aa8c066dca6205d987b3e9e5d342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x651c804d8a2f4a0ec047ae2355d8b88b6f48d8bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x785f638907849a5d608102922ae0c6fb89661671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85cd88575b4b45b295e44d12635308082d954c37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x868e6cf4c9e07ac8cacaa8d3471ada6996d1d417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9da57c13586980ef949f126bf8dd6be33043a80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa3064c99e5170a85652876fbe5be098b1bd0686b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb53c693544363912d2a034f70d9d98808d5e192a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-228653 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe17aa01508b7b649bd6556459575b140889d542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc06439adc3024e5be2d04d52e2f9d5d58c043b2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc1e4472a9f81d10132e421dd048f22516e58135b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc464e69c7317609400d927657d435b46c3012c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf92dc255abc7637381f223381dc2dfc2ab2baed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7fb635550a5db5c2f70c859fe2ee40851be1013` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd898a7b8329853826eb9547f0491f0b74b669b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8a0527999b7dceb7046eda332910e6dad6e5cfc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-228654 | `0xfab550568c688d5d8a52c7d794cb93edc26ec0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe6bfc223ece5a289a909a4cf6723e54300138a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05823c334150a48acd5d325fba16147c21ba3653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1a920b29ebd437074225caee44f78fc700b27a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-228667 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3d4b55df3e0742af0aebd6c8dd2a2f3540804f35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8a156bca562fb75385c4d41ea6903e270a34b727` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-228668 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd0e1b3a146b45e5c0e0cc345d3569b60cf2ed265` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-228669 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-228670 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1a920b29ebd437074225caee44f78fc700b27a5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x24c2b56128ff8e7bfad578abefb0fc7dfa9ba358` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-228671 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x317642bb2193bf5d7215aff0b103dc74ba1db610` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-228672 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-228673 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | blast | unit-228674 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x05823c334150a48acd5d325fba16147c21ba3653` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1a920b29ebd437074225caee44f78fc700b27a5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-228659 | `0x2d5d7d31f671f86c782533cc367f14109a082712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8a156bca562fb75385c4d41ea6903e270a34b727` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-228660 | `0xb5fb4be02232b1bba4dc8f81dc24c26980de9e3c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-228661 | `0xe432150cce91c13a887f7d836923d5597add8e31` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-228662 | `0xeb466342c4d449bc9f53a865d5cb90586f405215` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 291
- Live contracts: 0
- Unknown liveness contracts: 291
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=291

Showing first 200 of 291 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x05823c334150a48acd5d325fba16147c21ba3653` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1a920b29ebd437074225caee44f78fc700b27a5d` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8a156bca562fb75385c4d41ea6903e270a34b727` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x09162c3329e8534e0e95ae37e8e7fd47c46b8a08` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x11108b91d1a63e7f03e48be1d61983cb37e323d7` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x165f0d50d35988f02592c19c15d410e5bf7bde2f` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x1a634a6239053d11e4fb710494c47c969261797f` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2502e7a3401d9ac9735388fb29c9c803e1ea18c4` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x2700d384c39bbf9565d813b472ee005b383ac1e2` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x28de39a8869ff8b394c7bc658b25ce021869b950` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x309f474c1cc46c9c6cbf798e046021dfcc76cb2f` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x35fe17874dd1198c882868bf41a739c1fcc3e334` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x39f38c99e2e6945a2aa9472384ac24527f533fdd` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3fe06ec37eabc518f88c9c78729d1350e0f5f9cd` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x3ff66d99c6ce46555b8e00b571f6d54a2f26e80c` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x40cc65c93c87dbaeda248612c88d4ca2542d7a56` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x4488ded393830639109e9f939e5a38a2e4f8f1b1` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x47e1f636a2c374e8935106593b4fbe0d244df9b7` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x60d66d75c94038c67c49c65315a16568c008c346` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x6377d7ddc240aa8c066dca6205d987b3e9e5d342` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x651c804d8a2f4a0ec047ae2355d8b88b6f48d8bd` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x785f638907849a5d608102922ae0c6fb89661671` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x85cd88575b4b45b295e44d12635308082d954c37` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x868e6cf4c9e07ac8cacaa8d3471ada6996d1d417` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0x9da57c13586980ef949f126bf8dd6be33043a80c` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xa3064c99e5170a85652876fbe5be098b1bd0686b` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xb53c693544363912d2a034f70d9d98808d5e192a` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xbe17aa01508b7b649bd6556459575b140889d542` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc06439adc3024e5be2d04d52e2f9d5d58c043b2a` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc1e4472a9f81d10132e421dd048f22516e58135b` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xc464e69c7317609400d927657d435b46c3012c99` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xcf92dc255abc7637381f223381dc2dfc2ab2baed` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd7fb635550a5db5c2f70c859fe2ee40851be1013` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xd898a7b8329853826eb9547f0491f0b74b669b61` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xf8a0527999b7dceb7046eda332910e6dad6e5cfc` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| avalanche | unverified unclassified | UnnamedContract<br>`0xfe6bfc223ece5a289a909a4cf6723e54300138a0` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| base | unverified unclassified | UnnamedContract<br>`0x05823c334150a48acd5d325fba16147c21ba3653` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| base | unverified unclassified | UnnamedContract<br>`0x1a920b29ebd437074225caee44f78fc700b27a5d` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| base | unverified unclassified | UnnamedContract<br>`0x8a156bca562fb75385c4d41ea6903e270a34b727` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| blast | unverified unclassified | UnnamedContract<br>`0x1a920b29ebd437074225caee44f78fc700b27a5d` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| blast | unverified unclassified | UnnamedContract<br>`0x24c2b56128ff8e7bfad578abefb0fc7dfa9ba358` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| blast | unverified unclassified | UnnamedContract<br>`0x317642bb2193bf5d7215aff0b103dc74ba1db610` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| bsc | unverified unclassified | UnnamedContract<br>`0x39edb9188032d87657e8683724c11b1486cc4cb6` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4f4495243837681061c4743b74b3eedf548d56a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x59c38b3a349bcf7e46b024cddfb4778229609c28` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x65150789c11516bcfdde2c07a57d30dc73e81032` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| bsc | unverified unclassified | UnnamedContract<br>`0x87ea591f65a73cc286b0a521cff86a26232b2e2e` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb2a4f24edcb0f66cb23c07d530d33a10874860a7` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb4affe1a9c32ecfdd7443cd2e1c9b16f9f00644c` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb531ffa7dfe37787d38b7b48669d65aed04c791f` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb92616a93d9cc8609a1bb797a2a87958fdaeb22d` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| celo | unverified unclassified | UnnamedContract<br>`0x05823c334150a48acd5d325fba16147c21ba3653` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| celo | unverified unclassified | UnnamedContract<br>`0x1a920b29ebd437074225caee44f78fc700b27a5d` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| celo | unverified unclassified | UnnamedContract<br>`0x317642bb2193bf5d7215aff0b103dc74ba1db610` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| celo | unverified unclassified | UnnamedContract<br>`0x8a156bca562fb75385c4d41ea6903e270a34b727` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| celo | unverified unclassified | UnnamedContract<br>`0xc8d18f85cb0cee5c95ec29c69deaf6cea972349c` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x04dfdfa471b79cc9e6e8c355e6c71f8ec4916c50` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x08eee5214953f8f54e04c3279ce47548700affad` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d4cd2c24a4c9cd31fcf0d3c4682d234d9f94be4` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x10d96b1fd46ce7ce092aa905274b8ed9d4585a6e` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15b2838cd28cc353afbe59385db3f366d8945aee` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17d8cbb6bce8cee970a4027d1198f6700a7a6c24` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x19f7f071dd782f66fbcb4165b27d9b4217ee2973` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1c728f1bda86cd8d19f56e36eb9e24ed3e572a39` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e91f826fa8aa4fa4d3f595898af3a64dd188848` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25970282aac735cd4c76f30bfb0bf2bc8dad4e70` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x25dd5bc0fd84db78fda975b7decc5b7882f3da3a` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2837c77527c37d61d9763f53005211dacb4125de` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30647a72dc82d7fbb1123ea74716ab8a317eac19` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3218996f84d2596601834f197e29a669d820efd0` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3563cb49a1c3fa725f1888486754758d120b2bf8` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36f74bad13019612b33e359a9b263e904a95ec9b` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3cd782379ce010fcda43983b490a99f43aace0c0` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f63e5bbb53e46f8b21f67c25bf2dd78bc6c0e43` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4186c5aed424876f7ebe52f9148552a45e17f287` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x48c59199da51b7e30ea200a74ea07974e62c4ba7` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c5e03065bc52cce84f3ac94df14bbac27eac89b` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ca9123afc43dc9dde52a57a51afc44324138ded` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4fb30c5a3ac8e85bc32785518633303c4590752d` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x539c54bd78b89079f57560ea95080da7a76d81fe` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x54d06a0e1ce55a7a60ee175abceac7e363f603f3` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5c8eb57b44c1c6391fc7a8a0cf44d26896f92386` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ca061d60d1f10732f42fdb54eb1f4ef9065b7ca` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62aa1d6c2c591443ee32066773eb7b7be09e063c` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x657bd4d86c8aef3ab9c145b1b84eb2d661428ef9` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66126b4aa2a1c07536ef8e5e8bd4efda1fdea96d` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69ad1387da6b2ab2ea4bf2bee68246bc042b587f` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6de3a957b0344e6adeeab4648b02108f35651fb5` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6efa260a268e4afacf7fb91a6bf5f5b37379bf61` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f05662109b296afb0f02bf490300c6b95e07d3f` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7046b0bfc4c5eeb90559c0805dd9c1a6f4815370` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x71061e3f432fc5bee3a6763cd35f50d3c77a0434` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7594ae023979e30a44a2ebff64b7c82de3e46136` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x760ea8cfdcc4e78d8b9ca3088ecd460246dc0731` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x78befca7de27d07dc6e71da295cc2946681a6c7b` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c4cf0442dbf77f56a4ba8ad2347f136dfa5c78e` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7cb1576dcc0d8fcb32ebd21204899ef6c0270eb9` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x84e563334b706b5d823b0e0a62a724dd932ee6d1` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x87a59a9f2c2caf9c7ec3fa62d7496d9fc7449b01` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x881c72d1e6317f10a1cdcbe05040e7564e790c80` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8892d7a5e018cddb631f4733b5c1654e9de10aaf` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8bd8ec1e69e19b23db4e9cb31472f143d0e093cc` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8dacbe2b439e66f7940e7ca160685b5180476958` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x90ae544e8cc76d2867987ee4f5456c02c50abd8b` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x931420077fc8fb1f7218a1dd23043990bafd7df8` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x945facb997494cc2570096c74b5f66a3507330a1` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x968030d6f08f1b7515ba7b8ba1ff10557a69d7db` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9781c4e9b9cc6ac18405891df20ad3566fb6b301` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9827b882671747d096ce5b2d80a6e1ab126b5883` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98c54fd8c98eaf0938c4a00e7935a66341f7ba0e` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9ab5868f745d8fc6d45ce86dfe057f5b738c90e2` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9b4aba35b35eee7481775ccb4055ce4e176c9a6f` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa283fcb3c2b8dc908f93f17627e9f90fc8559d5d` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa3bed4e1c75d00fa6f4e5e6922db7261b5e9acd2` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa64d0be31db79e0441da56f0adea1f3a59aa20f5` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa7824292efdee1177a1c1bed0649cfdd6114fed5` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa88328ed84c31c98d81237c354cc852a5022b9ea` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xaa05a0949a35747bac858aa6110d3fae1edec8bb` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xabcc93c3be238884cc3309c19afd128fafc16911` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xadeedd3e5768f7882572ad91065f93ba88343c99` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xae8bc96da4f9a9613c323478be181fdb2aa0e1bf` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb1ad72924cd5438f74c6bfc8a6e5c6032d99851b` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb61a6f928b3f069a68469ddb670f20eeeb4921e0` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7c77da6e0a8b4f63384fce953327af59c0d5b9d` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb83a5a51df21321b365c918832e7e8f5de686f7e` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb128bc208c45b3dd277e001f88e1c6648060c64` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbb90d06371030ffa150e463621c22950b212eaa1` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca480d596e6717c95a62a4dc1bd4fbd7b7e7d705` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xce128488b560632056d9811dd24a59688dd33dc4` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcefcbb45be41331337d49a131faf424d1e50234f` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcf3f73290803fc04425bee135a4caeb2bab2c2a1` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd124b55f70d374f58455c8aedf308e52cf2a6207` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd36050b5f28126b5292b59128ed25e489a0f2f3f` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd409c506742b7f76f164909025ab29a47e06d30a` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd4a510b9e5b41a17f4e2e97477a468f6be85b102` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd55684f4369040c12262949ff78299f2bc9db735` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd7c346c228bddd8a6a4c1a69e6cc82292909dcad` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda13e3afed9c112bd906c732684a49dd65b178fd` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xda681d409319b1f4122b1402c8b5cd4baedf9001` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xdc66115be4eaa30fe8ca3b262bb8e3ff889f3a35` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe0d0d052d5b1082e52c6b8422acd23415c3df1c4` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe15aad5d6b7433e5988415274529311f6bf6e8a3` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe2f2a5c287993345a840db3b0845fbc70f5935a5` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe4c5b1765bf420016027177289908c5a3ea7668e` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe595d67181d701a5356e010d9a58eb9a341f1dbd` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe6e6e25efda5f69687aa9914f8d750c523a1d261` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe7e41f1b97f3eb2f218d99ecb22351fa669d5944` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf0239157ba67fb793ac6833056de15ce5c7388b3` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf1049aed858c4ead6df1de4dbe63ef607cff3262` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf38522f63f40f9dd81abafd2b8efc2ec958a3016` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf4a7d2d85f4ba11b5c73c35e27044c0c49f7f027` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf5ad2bf1b1a74c1c36503825cf1a07ac4a352107` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf617346a0fb6320e9e578e0c9b2a4588283d9d39` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf65d53aa6e2e4a5f4f026e73cb3e22c22d75e35c` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf6e53b3aae671319a0f9d9ca7fac5f41599bc7a5` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf7575d4d4db78f6ba43c734616c51e9fd4baa7fb` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfe842e95f8911dcc21c943a1daa4bd641a1381c6` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xffe2cdce7babb1422d5976c2fc27448f226b6bec` | non_address_book | unknown | unknown | unverified | n/a | `0x19f12c947d25ff8a3b748829d8001ca09a28d46d` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x17853c307dc3ebed36cdd9629e8b262b475075d3` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x22c2cfee24ca23b8e2ac4ffa07aae3be6eed1b78` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x383006138d9c11d2b07a37ce5c45412afbaa8695` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x47480d53520f322791775f3a2fb766799f012c00` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x480cb1998abee78182864ece43e21334b3e200d4` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4cd1bd604b0d0b737304360b6c4e74544b795af3` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4dbd67c4628c99c1aa4260ff92cf193f5f3b835d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x68334586b602dc71a32de73000f0b934fc1734bb` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d608abcf9a3be6b869e745e6f8db3434877d60f` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x98c48ff7257e5e562b7a92cc71e0f93f2fe7f169` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9be4574ac3c3b7f8ba88fa043e3ecf870c3ca840` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa0f4996fd83b211303e13765b3f18418101f9ddb` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa1ad7986ffc951063702e5fdaffd4ae83bfad7dd` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc18d923dfb17b2bc06f5b0fd8e99739fa0198d63` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xefcc516f6821603b9b9b451efd4e5e7ed878a25d` | non_address_book | unknown | unknown | unverified | n/a | `0xa4d35e5aa6adcb04cdd84c40f9e1f2a9b5c6d5a7` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0bb6ef61de7ba74c669ee090113eeeb9ae3be371` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x212207006e5ae344481fa34a6f4960eb0f302ff5` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x228b92510130ec2e09c6d5645039c8cb834ad42d` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bd58623f274d4a9806d27d4cc1ff6e840e946df` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4154cf6eea0633dd9c4933e76a077fd7e9260738` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x46e1f8e746ee9037fa42b3a718dce6c36cb3f16f` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50b5a9f47cb0f363ef99bc26dac8551c3cb1d523` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x59c38b3a349bcf7e46b024cddfb4778229609c28` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5be3f2a2478caa0afe6d96ab959f133346b9f12d` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72b1a3833c34d991916d104cf351eaec1c2e3f3d` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7a811a7525928f22a2da97e94750b94215c73e61` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ef80c411774a9bb8cb42845e75afe19744f8edc` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8e6b93ff8a2a77cfdeb30048cbe460dbe134f157` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa607e2aed0d349297faecfc6750b533a7b170513` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbc421722add7ad3cf23e7bbefe709330bbfd6188` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xbd3e8d41874bc123fb6913a2a6c6c8984c71876c` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc34e9700ee09b8662c3c4667c134ef43ec7f2516` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe88ab68cd69e92294fcc3bbbd894fb183197fa39` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xeb1ef7358a9c52c488cff20b046dedac8807c845` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xed9938294acf9ee52d097133ca2caaff0c804f16` | non_address_book | unknown | unknown | unverified | n/a | `0xa57adce1d2fe72949e4308867d894cd7e7de0ef2` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5846bf78fb95712f394ba1aba45ecf262f7209b4` | non_address_book | unknown | unknown | unverified | n/a | `0xee38dd8888885674edfc1e9bbf168eb520087659` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1` | non_address_book | unknown | unknown | unverified | n/a | `0xee38dd8888885674edfc1e9bbf168eb520087659` |
| fraxtal | unverified unclassified | UnnamedContract<br>`0x1a920b29ebd437074225caee44f78fc700b27a5d` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| linea | unverified unclassified | UnnamedContract<br>`0x05823c334150a48acd5d325fba16147c21ba3653` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| linea | unverified unclassified | UnnamedContract<br>`0x1a920b29ebd437074225caee44f78fc700b27a5d` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| linea | unverified unclassified | UnnamedContract<br>`0x3d4b55df3e0742af0aebd6c8dd2a2f3540804f35` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |
| linea | unverified unclassified | UnnamedContract<br>`0x8a156bca562fb75385c4d41ea6903e270a34b727` | non_address_book | unknown | unknown | unverified | n/a | `0xb8cd93c83a974649d76b1c19f311f639e62272bc` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2021-11 Adrian and Lucas.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2021-11%20Adrian%20and%20Lucas.pdf) | Adrian and Lucas | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2021-11 Commonprefix.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2021-11%20Commonprefix.pdf) | Commonprefix | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [2021-12 Cure53.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2021-12%20Cure53.pdf) | Cure53 | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2022-02 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-02%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [2022-03 Commonprefix.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-03%20Commonprefix.pdf) | Commonprefix | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [2022-04 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-04%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [2022-04 Certik.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-04%20Certik.pdf) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |
| [2022-04 Cure53.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-04%20Cure53.pdf) | Cure53 | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2022-05 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-05%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2022-06 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-06%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2022-07 Ackee blockchain-v2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-07%20Ackee%20blockchain-v2.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2022-07 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-07%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2022-08 Ackee blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-08%20Ackee%20blockchain.pdf) | Ackee Blockchain | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2022-08 Chaintroopers.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-08%20Chaintroopers.pdf) | Chaintroopers | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2022-09 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-09%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2022-10 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-10%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2022-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [2022-12 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2022-12%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2023-01 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-01%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2023-02 Ackee Blockchain-2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-02%20Ackee%20Blockchain-2.pdf) | Ackee Blockchain | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2023-02 Ackee Blockchain-3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-02%20Ackee%20Blockchain-3.pdf) | Ackee Blockchain | Audit | 2023-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [2023-02 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-02%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2023-04 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-04%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2023-04 Informal Systems.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-04%20Informal%20Systems.pdf) | Informal Systems | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2023-08 Yaar Hahn Governance.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-08%20Yaar%20Hahn%20Governance.pdf) | Yaar Hahn | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2023-08 Yaar Hahn ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-08%20Yaar%20Hahn%20ITS.pdf) | Yaar Hahn | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2023-10 Least Authority.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-10%20Least%20Authority.pdf) | Least Authority | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2023-11 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-11%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 59 | high |
| [2023-12 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2023-12%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [2024-02 Ackee Blockchain CGP Refactor.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-02%20Ackee%20Blockchain%20CGP%20Refactor.pdf) | Ackee Blockchain | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [2024-02 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-02%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-02 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 61 | high |
| [2024-03 NCC.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-03%20NCC.pdf) | NCC | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-04 Ackee Blockchain ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-04%20Ackee%20Blockchain%20ITS.pdf) | Ackee Blockchain | Audit | 2024-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 40 | high |
| [2024-04 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-04%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2024-05 Halborn.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-05%20Halborn.pdf) | Halborn | Audit | 2024-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-06 NCC.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-06%20NCC.pdf) | NCC | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-06 Ottersec.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-06%20Ottersec.pdf) | Ottersec | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2024-07 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-07%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2024-11 Ackee Blockchain.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [2024-11 NCC.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20NCC.pdf) | NCC | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-11 NCC_ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20NCC_ITS.pdf) | NCC | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-11 Ottersec - Sui.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20Ottersec%20-%20Sui.pdf) | Ottersec | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2024-11 Ottersec_Sui_Gateway.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2024-11%20Ottersec_Sui_Gateway.pdf) | Ottersec | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [2025-01 Ackee_ITS.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20Ackee_ITS.pdf) | Ackee Blockchain | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [2025-01 FYEO_Soroban.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20FYEO_Soroban.pdf) | FYEO | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [2025-01 FYEO_XRPL.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20FYEO_XRPL.pdf) | FYEO | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-01 NCC_XRPL_v1.3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01%20NCC_XRPL_v1.3.pdf) | NCC | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf) | NCC | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2025-03 NCC_XRPL_phase2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-03%20NCC_XRPL_phase2.pdf) | NCC | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04%20NCC%20_%20XRPL%20_%20Final%20v1.0_phase3.pdf) | NCC | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2025-04 axelar_cgp_soroban_stellar_audit_final.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04%20axelar_cgp_soroban_stellar_audit_final.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2025-04-Axelar-mvx-gas-service.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-gas-service.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-gateway.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-gateway.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-governance-1.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-governance-1.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-governance-2.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-governance-2.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-interchain-token-factory.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-interchain-token-factory.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-interchain-token-service-proxy.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-interchain-token-service-proxy.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-04-Axelar-mvx-interchain-token-service.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-interchain-token-service.pdf) | Unknown | Audit | 2025-04 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-04-Axelar-mvx-token-manager.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-04-Axelar-mvx-token-manager.pdf) | Unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-05 NCC_XRPL_phase3.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-05%20NCC_XRPL_phase3.pdf) | NCC | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf](https://github.com/axelarnetwork/audits/blob/main/audits/2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf) | Ackee Blockchain | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/axelarnetwork/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [Flow](https://github.com/axelarnetwork/amplifier-advisory-committee/blob/main/src/chains/flow-evm/FLOW_EVM_REPORT.md) | Amplifier Advisory Committee | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [here](https://github.com/axelarnetwork/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16712] 2021-11 Adrian and Lucas.pdf — no match: Audit report covers three Rust libraries: tofn, tofnd, and paillier-rs. No Solidity contracts. Date from cover page.
- [16713] 2021-11 Commonprefix.pdf — no match: All contracts listed in scope section of the audit report.
- [16714] 2021-12 Cure53.pdf — no match: Extracted repository names from scope section; no individual contract files listed.
- [16715] 2022-02 Ackee blockchain.pdf — no match: All contracts described in System Overview section 4.1 are in scope. Audit date from document revision 1.1 and citation.
- [16716] 2022-03 Commonprefix.pdf — no match: All contracts listed in the scope section of the audit report.
- [16717] 2022-04 Ackee blockchain.pdf — no match: Contracts explicitly listed in System Overview section and targeted in findings.
- [16718] 2022-04 Certik.pdf — no match: Extracted 22 contract names from the audit scope table. The audit date is explicitly given as 'Apr 22, 2022' in the delivery date.
- [16719] 2022-04 Cure53.pdf — no match: Extracted contract names from Solidity source files mentioned in findings. The audit report covers WP1 (Axelar Core & Components) which includes Solidity contracts. The date is from the report cover page: 'Cure53, Berlin · 04/25/22'.
- [16720] 2022-05 Ackee blockchain.pdf — no match: Contracts extracted from findings targets and descriptions. No explicit scope table; contracts are identified from finding targets and code references.
- [16721] 2022-06 Ackee blockchain.pdf — no match: Three contracts explicitly described in scope: SquidSwapExecutable, DistributionENSExecutable, SquidToken. Audit date from cover page and document revisions.
- [16722] 2022-07 Ackee blockchain-v2.pdf — no match: Contracts explicitly described in System Overview section and targeted in findings.
- [16723] 2022-07 Ackee blockchain.pdf — no match: Extracted from Executive Summary and System Overview sections. Contracts explicitly listed: AxelarAuthMultisig and XC20Wrapper. Proxy.sol is also referenced in findings.
- [16724] 2022-08 Ackee blockchain.pdf — no match: All contracts explicitly listed in scope and described in System Overview section.
- [16725] 2022-08 Chaintroopers.pdf — no match: Extracted contracts from scope section and findings. Audit date from cover page.
- [16726] 2022-09 Ackee Blockchain.pdf — no match: Extracted contract names from scope section and findings targets. Audit date from cover page and appendix A.
- [16727] 2022-10 Ackee Blockchain.pdf — matched: Extracted 7 contracts from scope section on page 8. Audit date from cover page and appendix A.
- [16728] 2022-12 Ackee Blockchain.pdf — no match: Contracts explicitly described in System Overview section and targeted in findings.
- [16729] 2023-01 Ackee Blockchain.pdf — no match: Contracts explicitly described in System Overview section and targeted in findings.
- [16730] 2023-02 Ackee Blockchain-2.pdf — no match: Contracts explicitly listed in System Overview section. Date from document revision and appendix.
- [16731] 2023-02 Ackee Blockchain-3.pdf — matched: Scope explicitly listed 6 contracts in the executive summary. Also includes Create3 library (not a contract but in scope).
- [16732] 2023-02 Ackee Blockchain.pdf — no match: Extracted contracts from System Overview sections and findings targets. Audit date from cover page and document revisions.
- [16733] 2023-04 Ackee Blockchain.pdf — no match: Contracts explicitly listed in System Overview section of the audit report.
- [16734] 2023-04 Informal Systems.pdf — no match: The audit scope is the axelarnet module (Cosmos SDK module), not individual smart contracts. The date is from the cover page: 'Last revised 4 August, 2023'.
- [16735] 2023-08 Yaar Hahn Governance.pdf — no match: Extracted contracts from scope section and findings. Audit date is end of engagement (August 8, 2023).
- [16736] 2023-08 Yaar Hahn ITS.pdf — no match: All contracts mentioned in findings are considered in scope. No explicit scope section, but report title and date indicate audit of interchain-token-service repository.
- [16737] 2023-10 Least Authority.pdf — no match: Extracted contract names from file paths in findings and scope section. Audit date from cover page and headers.
- [16738] 2023-11 Ackee Blockchain.pdf — matched: Extracted contract names from system overview sections of multiple revisions, findings targets, and inheritance diagrams. The audit report covers multiple revisions with final date 13.11.2023.
- [16739] 2023-12 Ackee Blockchain.pdf — no match: The audit report covers multiple revisions (1.0 to 6.0) of the Axelar Interchain Token Service. The final audit date is December 12, 2023 (Revision 6.0). The scope includes all contracts described in the system overview sections of each revision, as well as contracts mentioned in findings. The report explicitly lists contracts in scope in sections like 'System Overview' and 'Contracts'.
- [16740] 2024-02 Ackee Blockchain CGP Refactor.pdf — no match: Extracted contracts from findings targets and system overview sections. Audit date from cover page and appendix.
- [16741] 2024-02 Ackee Blockchain.pdf — matched: The audit report covers multiple revisions (1.0 to 7.0) of the Axelar Interchain Token Service. The scope includes all contracts described in the system overview sections of each revision, as well as contracts mentioned in findings. The final audit date is 15.02.2024 from the cover page.
- [16742] 2024-03 NCC.pdf — no match: The scope section mentions 'contracts/' as a high-priority directory but does not list specific contract names. No individual contract names are explicitly named in scope.
- [16743] 2024-04 Ackee Blockchain ITS.pdf — matched: Extracted from the document revision history and system overview sections. The audit report covers multiple revisions from April 2023 to April 2024. The final revision date is 11.4.2024 (April 11, 2024).
- [16744] 2024-04 Ackee Blockchain.pdf — no match: Scope explicitly mentions AxelarAmplifierAuth, AxelarAmplifierGateway contracts and their dependencies. BaseWeightedMultisig is a dependency described in System Overview. Audit date from cover page and appendix.
- [16745] 2024-05 Halborn.pdf — no match: The report mentions 'Amplifier Contracts' and 'Axelar' but does not list specific contract names or file paths in the provided text. The scope section is referenced but not included in the excerpt.
- [16746] 2024-06 NCC.pdf — no match: Extracted contracts from scope and findings. The report covers the Amplifier Gateway and GMP SDK contracts. The audit date is from the cover page.
- [16747] 2024-06 Ottersec.pdf — no match: The scope section only mentions 'cgp-sui' as the program name. No individual contract or module names are listed. The report references source files like deepbook_v2.move, gateway.move, discovery.move, transfers.move, auth.move, validators.move, but these are not explicitly listed as in-scope contracts. The audit date is from the cover page.
- [16748] 2024-07 Ackee Blockchain.pdf — no match: Extracted from executive summary and revision sections. Date from cover page and appendix A.
- [16749] 2024-11 Ackee Blockchain.pdf — no match: Extracted 10 explicitly scoped contracts from the scope list, plus additional contracts mentioned in findings that are part of the audited codebase.
- [16750] 2024-11 NCC.pdf — no match: Scope includes Axelar core changes (files listed) and Amplifier contracts (interchain-token-service and axelarnet-gateway CosmWasm contracts). Contract names extracted from file paths and context.
- [16751] 2024-11 NCC_ITS.pdf — no match: Scope includes Axelar core changes and Amplifier contracts (ITS and Axelarnet Gateway). Keeper and Counter are extracted from findings as they are part of the audited codebase.
- [16752] 2024-11 Ottersec - Sui.pdf — no match: The scope section only lists the program name 'cgp-sui' as a whole, not individual contract files. The audit date is from the cover page: 'June 11th, 2024'.
- [16753] 2024-11 Ottersec_Sui_Gateway.pdf — no match: The scope section only mentions the program name 'cgp-sui' as a whole, not individual contract files. The audit date is from the cover page: 'June 11th, 2024'.
- [16754] 2025-01 Ackee_ITS.pdf — no match: Extracted 10 contracts from explicit scope listing, plus additional contracts referenced in findings that are part of the audited codebase.
- [16755] 2025-01 FYEO_Soroban.pdf — no match: Extracted contract names from the scope table listing files in the code review. Audit date from cover page and header.
- [16756] 2025-01 FYEO_XRPL.pdf — no match: Extracted contract names from the scope table and file paths. Audit date from cover page.
- [16757] 2025-01 NCC_XRPL_v1.3.pdf — no match: Scope explicitly lists four contract/module paths: xrpl-multisig-prover, xrpl-gateway, xrpl-voting-verifier, and xrpl-types. Off-chain components (ampd) are also in scope but are not smart contracts. Audit date is January 27, 2025 from the cover page.
- [16758] 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf — no match: Extracted 6 contract/module names from the scope section and file paths. Audit date from cover page.
- [16759] 2025-03 NCC_XRPL_phase2.pdf — no match: Scope section lists directories for XRPL Multisig Prover, XRPL Gateway, XRPL Voting Verifier, and XRPL types. Off-chain components (ampd signing/verification) are not smart contracts and are excluded.
- [16760] 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf — no match: Extracted contract names from scope section and target data. Audit date from cover page.
- [16761] 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf — no match: Extracted contract names from file paths and findings. The scope section describes the repo but does not list individual contracts; names were inferred from file paths in findings.
- [16762] 2025-04-Axelar-mvx-gas-service.pdf — no match: Only one contract (GasService) is in scope, located at ./gas-service/src/lib.rs. The audit date is explicitly stated on the cover page.
- [16763] 2025-04-Axelar-mvx-gateway.pdf — no match: The audit report scope section lists the repository and path ./gateway/ as the smart contract under audit. No specific .sol or .rs file names are given, but the contract is referred to as 'gateway' throughout.
- [16764] 2025-04-Axelar-mvx-governance-1.pdf — no match: Only one contract (Governance) is in scope, located at governance/src/lib.rs. The audit date is explicitly stated on the cover page.
- [16765] 2025-04-Axelar-mvx-governance-2.pdf — no match: Only one contract (Governance) is in scope, located at governance/src/lib.rs. Audit date is April 21, 2025 from the cover page.
- [16766] 2025-04-Axelar-mvx-interchain-token-factory.pdf — no match: The audit scope is a single smart contract path: ./interchain-token-factory/. No individual contract names are provided beyond the directory name. The audit date is explicitly stated on the cover page.
- [16767] 2025-04-Axelar-mvx-interchain-token-service-proxy.pdf — no match: The audit report covers a single smart contract named 'interchain-token-service-proxy' located in the repository. The date is explicitly stated on the cover page.
- [16768] 2025-04-Axelar-mvx-interchain-token-service.pdf — no match: The audit report does not list specific contract names in a scope table. It only references file paths like interchain-token-service/src/proxy_its.rs, but no explicit contract names are given. The report focuses on code issues within the interchain-token-service module.
- [16769] 2025-04-Axelar-mvx-token-manager.pdf — no match: The audit report scope section lists the repository and path for the MultiversX smart contract. The contract is referred to as 'token-manager' (the directory name). No individual .sol or .rs files are listed; the scope is the entire token-manager module.
- [16770] 2025-05 NCC_XRPL_phase3.pdf — no match: Extracted contract/module names from scope section and file paths. Audit date from cover page.
- [16771] 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf — no match: Scope explicitly lists six programs: Axelar Gas Service, Axelar Gateway, Axelar Interchain Token Service, Axelar Multicall, Axelar Governance, Axelar Memo. Audit date is 8.8.2025 from cover page and appendix.
- [16772] Active Bug Bounty Program — no match: The document is a bug bounty program page, not an audit report. No contracts in scope are listed; only general program information and reward details are provided.
- [16773] Flow — no match: The report is a high-level assessment of Flow EVM integration with Axelar Amplifier, not a smart contract audit. No specific contracts are listed as in scope. The only contracts mentioned are third-party dependencies (Axelar GMP SDK contracts) and Flow's own components (EVM Core, VM Bridge, EVM Gateway) but they are not explicitly scoped for audit in this report.
- [16774] here — no match: The provided text is a GitHub repository README listing audit reports, not an actual audit report. No specific contracts in scope are identified.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2021-11 Adrian and Lucas.pdf | tofn | unmatched — not counted | — | audited commit 8dabe9354c67ca3a9753c83719e95231908eb4e9 | no |
| 2021-11 Adrian and Lucas.pdf | tofnd | unmatched — not counted | — | audited commit c9846f20386364cd77dc87df748856aa56a3783a | no |
| 2021-11 Adrian and Lucas.pdf | paillier-rs | unmatched — not counted | — | audited commit 2d965b16d89de6f5d15b054fd5874d0c017c4747 | no |
| 2021-11 Commonprefix.pdf | AdminMultisigBase | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGatewayMultisig | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGatewayProxyMultisig | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGatewayProxySinglesig | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGatewayProxy | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | AxelarGateway | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | Burner | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | Context | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | EternalStorage | unmatched — not counted | — | listed in scope | no |
| 2021-11 Commonprefix.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 2021-12 Cure53.pdf | axelar-core | unmatched — not counted | — | listed in scope as WP1 repository | no |
| 2021-12 Cure53.pdf | tofnd | unmatched — not counted | — | listed in scope as WP1 repository | no |
| 2021-12 Cure53.pdf | solidity-cgp-gateway | unmatched — not counted | — | listed in scope as WP1 repository | no |
| 2021-12 Cure53.pdf | tofn | unmatched — not counted | — | listed in scope as WP1 repository | no |
| 2021-12 Cure53.pdf | axelar-web-app | unmatched — not counted | — | listed in scope as WP3 repository | no |
| 2021-12 Cure53.pdf | axelarjs-sdk | unmatched — not counted | — | listed in scope as WP3 repository | no |
| 2021-12 Cure53.pdf | axelar-bridge-rest-server | unmatched — not counted | — | listed in scope as WP3 repository | no |
| 2022-02 Ackee blockchain.pdf | EternalStorage | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | AdminMultisigBase | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGateway | unmatched — not counted | — | target in finding H1, H2 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGatewayMultisig | unmatched — not counted | — | target in finding M1, W3 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | target in finding W3, I1 | no |
| 2022-02 Ackee blockchain.pdf | ECDSA | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGatewayProxy | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGatewayProxyMultisig | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | AxelarGatewayProxySinglesig | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | ERC20 | unmatched — not counted | — | target in finding L1 | no |
| 2022-02 Ackee blockchain.pdf | MintableCappedERC20 | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | ERC20Permit | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | DepositHandler | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-02 Ackee blockchain.pdf | Ownable | unmatched — not counted | — | described in System Overview section 4.1 | no |
| 2022-03 Commonprefix.pdf | AxelarGatewayProxyMultisig | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AxelarGatewayProxy | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | ERC20Permit | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AxelarGatewayProxySinglesig | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AxelarGatewayMultisig | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | DepositHandler | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AdminMultisigBase | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | MintableCappedERC20 | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | Context | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | AxelarGateway | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | EternalStorage | unmatched — not counted | — | listed in scope | no |
| 2022-03 Commonprefix.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | listed in scope | no |
| 2022-04 Ackee blockchain.pdf | EternalStorage | unmatched — not counted | — | described in System Overview | no |
| 2022-04 Ackee blockchain.pdf | AdminMultisigBase | unmatched — not counted | — | described in System Overview | no |
| 2022-04 Ackee blockchain.pdf | AxelarGateway | unmatched — not counted | — | described in System Overview | no |
| 2022-04 Ackee blockchain.pdf | AxelarGatewayMultisig | unmatched — not counted | — | described in System Overview and findings | no |
| 2022-04 Ackee blockchain.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | described in System Overview and findings | no |
| 2022-04 Ackee blockchain.pdf | DepositHandler | unmatched — not counted | — | mentioned in findings M3 and I1 | no |
| 2022-04 Ackee blockchain.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | mentioned in findings I1 and C.1 | no |
| 2022-04 Ackee blockchain.pdf | ERC20Permit | unmatched — not counted | — | mentioned in finding C.1 | no |
| 2022-04 Ackee blockchain.pdf | AxelarGatewayProxy | unmatched — not counted | — | mentioned in finding M1 | no |
| 2022-04 Certik.pdf | AxelarGatewayMultisig | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IERC20 | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | AxelarGateway | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | Context | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | AddressFormat | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | EternalStorage | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IAxelarGatewaySinglesig | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IAxelarGatewayMultisig | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | DepositHandler | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IERC20BurnFrom | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | TokenDeployer | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | ERC20Permit | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | AdminMultisigBase | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | Ownable | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | MintableCappedERC20 | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IAxelarExecutable | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | ECDSA | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | IAxelarGateway | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | ERC20 | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Certik.pdf | AxelarGatewayProxy | unmatched — not counted | — | listed in audit scope table | no |
| 2022-04 Cure53.pdf | ERC20 | unmatched — not counted | — | Affected file in findings AXE-02-013 and AXE-02-014 | no |
| 2022-04 Cure53.pdf | AxelarGatewayMultisig | unmatched — not counted | — | Mentioned in finding AXE-02-006 and AXE-02-007 | no |
| 2022-04 Cure53.pdf | AxelarGatewaySinglesig | unmatched — not counted | — | Mentioned in finding AXE-02-006 and AXE-02-007 | no |
| 2022-04 Cure53.pdf | AdminMultisigBase | unmatched — not counted | — | Affected file in finding AXE-02-006 | no |
| 2022-04 Cure53.pdf | AxelarGateway | unmatched — not counted | — | Affected file in finding AXE-02-007 | no |
| 2022-05 Ackee blockchain.pdf | AxelarGasReceiverProxy | unmatched — not counted | — | M1: Upgradeability target | no |
| 2022-05 Ackee blockchain.pdf | Proxy | unmatched — not counted | — | M1: Upgradeability target | no |
| 2022-05 Ackee blockchain.pdf | AxelarGasReceiver | unmatched — not counted | — | M2 and W3 targets | no |
| 2022-05 Ackee blockchain.pdf | Upgradable | unmatched — not counted | — | M1: Upgradeability target | no |
| 2022-05 Ackee blockchain.pdf | AxelarDepositService | unmatched — not counted | — | M3, M4, W2 targets | no |
| 2022-05 Ackee blockchain.pdf | DepositHandler | unmatched — not counted | — | M3: handleTokenSend transfers funds from DepositHandler | no |
| 2022-05 Ackee blockchain.pdf | DepositReceiver | unmatched — not counted | — | W2: approvals executed through DepositReceiver | no |
| 2022-05 Ackee blockchain.pdf | AxelarGateway | unmatched — not counted | — | M3: sendToken called on AxelarGateway | no |
| 2022-06 Ackee blockchain.pdf | SquidSwapExecutable | unmatched — not counted | — | described in section 4.2 Contracts and targeted in findings | no |
| 2022-06 Ackee blockchain.pdf | DistributionENSExecutable | unmatched — not counted | — | described in section 4.2 Contracts and targeted in findings | no |
| 2022-06 Ackee blockchain.pdf | SquidToken | unmatched — not counted | — | described in section 4.2 Contracts and targeted in findings | no |
| 2022-07 Ackee blockchain-v2.pdf | AxelarAuthWeighted | unmatched — not counted | — | Section 4.1 Contracts: 'AxelarAuthWeighted is used as an authentication mechanism...' | no |
| 2022-07 Ackee blockchain-v2.pdf | AxelarDepositService | unmatched — not counted | — | Section 4.1 Contracts: 'AxelarDepositService is used to manage deposits...' | no |
| 2022-07 Ackee blockchain-v2.pdf | DepositReceiver | unmatched — not counted | — | Section 4.1 Contracts: 'DepositReceiver is used as a wallet to hold the deposits.' | no |
| 2022-07 Ackee blockchain-v2.pdf | ReceiverImplementation | unmatched — not counted | — | Section 4.1 Contracts: 'It inherits from ReceiverImplementation...' | no |
| 2022-07 Ackee blockchain-v2.pdf | AxelarDepositServiceProxy | unmatched — not counted | — | Finding W2 target: 'AxelarDepositServiceProxy.sol' | no |
| 2022-07 Ackee blockchain-v2.pdf | Upgradable | unmatched — not counted | — | Finding M1 target: 'Upgradable.sol' | no |
| 2022-07 Ackee blockchain-v2.pdf | Ownable | unmatched — not counted | — | Finding M1 target: 'Ownable.sol' | no |
| 2022-07 Ackee blockchain.pdf | AxelarAuthMultisig | unmatched — not counted | — | listed in scope: Solidity CGP Gateway - contracts/AxelarAuthMultisig.sol | no |
| 2022-07 Ackee blockchain.pdf | XC20Wrapper | unmatched — not counted | — | listed in scope: XC20 Wrapper - contracts/* | no |
| 2022-07 Ackee blockchain.pdf | Proxy | unmatched — not counted | — | mentioned in finding I1: XC20 Wrapper/contracts/Proxy.sol | no |
| 2022-08 Ackee blockchain.pdf | TokenLinker | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Ackee blockchain.pdf | TokenLinkerLockUnlock | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Ackee blockchain.pdf | TokenLinkerMintBurn | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Ackee blockchain.pdf | TokenLinkerNative | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Ackee blockchain.pdf | TokenLinkerProxy | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Ackee blockchain.pdf | AxelarForecallable | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2022-08 Chaintroopers.pdf | AxelarAuthWeighted | unmatched — not counted | — | listed in scope and findings | no |
| 2022-08 Chaintroopers.pdf | AxelarGateway | unmatched — not counted | — | listed in scope and findings | no |
| 2022-08 Chaintroopers.pdf | AxelarGasService | unmatched — not counted | — | listed in scope and findings | no |
| 2022-08 Chaintroopers.pdf | ReceiverImplementation | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | DepositReceiver | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | AxelarDepositService | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | BurnableMintableCappedERC20 | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | Ownable | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | AdminMultisigBase | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | Upgradable | unmatched — not counted | — | listed in findings | no |
| 2022-08 Chaintroopers.pdf | DepositHandler | unmatched — not counted | — | mentioned in findings | no |
| 2022-08 Chaintroopers.pdf | MintableCappedERC20 | unmatched — not counted | — | mentioned in findings | no |
| 2022-08 Chaintroopers.pdf | ERC20 | unmatched — not counted | — | mentioned in findings | no |
| 2022-09 Ackee Blockchain.pdf | TokenLinkerFactory | unmatched — not counted | — | listed in scope section 4.1 | no |
| 2022-09 Ackee Blockchain.pdf | TokenLinker | unmatched — not counted | — | target in finding M1 | no |
| 2022-09 Ackee Blockchain.pdf | TokenLinkerRouter | unmatched — not counted | — | mentioned in finding I1 | no |
| 2022-09 Ackee Blockchain.pdf | TokenLinkerMintBurnExternal | unmatched — not counted | — | target in finding I2 | no |
| 2022-09 Ackee Blockchain.pdf | TokenLinkerNative | unmatched — not counted | — | target in finding I4 | no |
| 2022-10 Ackee Blockchain.pdf | ConstAddressDeployer | own contract | ConstAddressDeployer (selected) `0x98b2920d53612483f91f12ed7754e51b4a77919e` — deployed 2022-08-31 21:44:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10 Ackee Blockchain.pdf | StringAddressUtils | unmatched — not counted | — | listed in scope | no |
| 2022-10 Ackee Blockchain.pdf | StringBytesUtils | unmatched — not counted | — | listed in scope | no |
| 2022-10 Ackee Blockchain.pdf | RoledPausable | unmatched — not counted | — | listed in scope | no |
| 2022-10 Ackee Blockchain.pdf | SquidMulticall | unmatched — not counted | — | listed in scope | no |
| 2022-10 Ackee Blockchain.pdf | SquidRouterProxy | unmatched — not counted | — | listed in scope | no |
| 2022-10 Ackee Blockchain.pdf | SquidRouter | unmatched — not counted | — | listed in scope | no |
| 2022-12 Ackee Blockchain.pdf | Upgradeable | unmatched — not counted | — | listed in scope | no |
| 2022-12 Ackee Blockchain.pdf | AxelarForecallable | unmatched — not counted | — | listed in scope | no |
| 2022-12 Ackee Blockchain.pdf | AxelarForecallService | unmatched — not counted | — | listed in scope | no |
| 2022-12 Ackee Blockchain.pdf | IAxelarForecallService | unmatched — not counted | — | listed in scope | no |
| 2023-01 Ackee Blockchain.pdf | GMPExpressService | unmatched — not counted | — | listed in scope and findings | no |
| 2023-01 Ackee Blockchain.pdf | ExpressExecutableProxy | unmatched — not counted | — | listed in scope and findings | no |
| 2023-01 Ackee Blockchain.pdf | ExpressRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-2.pdf | InterchainTokenLinker | unmatched — not counted | — | listed in scope and findings | no |
| 2023-02 Ackee Blockchain-2.pdf | LinkerRouter | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-2.pdf | LinkedTokenData | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | FinalProxy | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | Create3 | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | Create3Deployer | own contract | Create3Deployer (selected) `0x6513aedb4d1593ba12e50644401d976aebdc90d8` — deployed 2023-10-12 09:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-02 Ackee Blockchain-3.pdf | ExpressExecutable | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | ExpressProxy | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | ExpressProxyDeployer | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain-3.pdf | ExpressRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-02 Ackee Blockchain.pdf | GMPExpressService | unmatched — not counted | — | Listed in scope and described in System Overview sections. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressExecutableProxy | unmatched — not counted | — | Listed in scope and described in System Overview sections. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressRegistry | unmatched — not counted | — | Listed in scope and described in System Overview sections. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressProxy | unmatched — not counted | — | Renamed from ExpressExecutableProxy in revision 1.1, described in System Overview. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressProxyDeployer | unmatched — not counted | — | New contract introduced in revision 1.1, described in System Overview. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressProxyFactory | unmatched — not counted | — | New contract introduced in revision 1.1, described in System Overview. | no |
| 2023-02 Ackee Blockchain.pdf | ExpressExecutable | unmatched — not counted | — | Mentioned in revision 1.1 System Overview as not upgradeable. | no |
| 2023-04 Ackee Blockchain.pdf | InterchainTokenService | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | InterchainToken | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | LinkedTokenData | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | LinkerRouter | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | TokenDeployer | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | BytecodeServer | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Ackee Blockchain.pdf | ERC20BurnableMintable | unmatched — not counted | — | described in System Overview | no |
| 2023-04 Informal Systems.pdf | axelarnet | unmatched — not counted | — | Scope section: 'the x/axelarnet module' is the focus of the audit. | no |
| 2023-08 Yaar Hahn Governance.pdf | AxelarGateway | unmatched — not counted | — | listed in scope | no |
| 2023-08 Yaar Hahn Governance.pdf | MultisigBase | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn Governance.pdf | Multisig | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn Governance.pdf | AxelarServiceGovernance | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn Governance.pdf | InterchainGovernance | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn Governance.pdf | Caller | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn Governance.pdf | Timelock | unmatched — not counted | — | listed in scope | no |
| 2023-08 Yaar Hahn ITS.pdf | RemoteAddressValidator | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | Operatable | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | Distributable | unmatched — not counted | — | mentioned in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | InterchainToken | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | TokenManagerProxy | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | InterchainTokenService | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | TokenManager | unmatched — not counted | — | listed in findings | no |
| 2023-08 Yaar Hahn ITS.pdf | FlowLimit | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope and findings | no |
| 2023-10 Least Authority.pdf | StandardizedTokenDeployer | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | TokenManagerDeployer | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | ERC20 | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | LinkerRouter | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | Adminable | unmatched — not counted | — | listed in findings | no |
| 2023-10 Least Authority.pdf | ExpressCallHandler | unmatched — not counted | — | listed in findings | no |
| 2023-11 Ackee Blockchain.pdf | InterchainTokenService | unmatched — not counted | — | Core contract, main entry point, described in system overviews of multiple revisions. | no |
| 2023-11 Ackee Blockchain.pdf | InterchainToken | unmatched — not counted | — | Abstract ERC-20 token contract, base of TokenManagerCanonical, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | LinkerRouter | unmatched — not counted | — | Contract for authorization of cross-chain messages, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenDeployer | unmatched — not counted | — | Deploys tokens using Create3Deployer, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | BytecodeServer | unmatched — not counted | — | Holds token creation code, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | ERC20BurnableMintable | unmatched — not counted | — | ERC-20 implementation used for token deployments, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManager | unmatched — not counted | — | Abstract base class for all token manager types, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerCanonical | unmatched — not counted | — | Token manager type for canonical tokens, inherits InterchainToken, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerLiquidityPool | unmatched — not counted | — | Token manager type using external liquidity pool, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerLockUnlock | unmatched — not counted | — | Token manager type storing tokens directly, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerMintBurn | unmatched — not counted | — | Token manager type using mint/burn, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | AddressBytesUtils | unmatched — not counted | — | Library for address conversion, finding M2 targets it. | no |
| 2023-11 Ackee Blockchain.pdf | ExpressCallHandler | unmatched — not counted | — | Contract for express call handling, finding I9 mentions it. | no |
| 2023-11 Ackee Blockchain.pdf | FlowLimit | unmatched — not counted | — | Contract for flow limit logic, finding I6 targets it. | no |
| 2023-11 Ackee Blockchain.pdf | IInterchainTokenExecutable | unmatched — not counted | — | Interface for executable callback, finding W9 mentions typo. | no |
| 2023-11 Ackee Blockchain.pdf | IInterchainTokenService | unmatched — not counted | — | Interface for InterchainTokenService, finding I3 mentions event typo. | no |
| 2023-11 Ackee Blockchain.pdf | RemoteAddressValidator | unmatched — not counted | — | Renamed from LinkerRouter, described in revision 3.0 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Operatable | unmatched — not counted | — | Utility contract for operator role, findings M3, M4 target it. | no |
| 2023-11 Ackee Blockchain.pdf | NoReEntrancy | unmatched — not counted | — | Utility contract for reentrancy protection, described in revision 3.0 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | StandardizedToken | unmatched — not counted | — | New interchain token type, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | StandardizedTokenLockUnlock | unmatched — not counted | — | Standardized token variant, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | StandardizedTokenMintBurn | unmatched — not counted | — | Standardized token variant, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | StandardizedTokenProxy | unmatched — not counted | — | Proxy for standardized tokens, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Implementation | unmatched — not counted | — | Utility contract, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Multicall | unmatched — not counted | — | Utility contract, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | StandardizedTokenDeployer | unmatched — not counted | — | Deployer for standardized tokens, described in revision 2.1 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerAddressStorage | unmatched — not counted | — | Inheritance diagram in revision 3.0 shows it as a base. | no |
| 2023-11 Ackee Blockchain.pdf | TokenManagerLockUnlockFee | unmatched — not counted | — | New TokenManager for fee-on-transfer tokens, described in revision 3.0 system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Distributable | unmatched — not counted | — | Utility contract for distributor role, finding M4 targets it. | no |
| 2023-11 Ackee Blockchain.pdf | InterchainTokenServiceProxy | unmatched — not counted | — | Proxy contract for InterchainTokenService, finding I10 targets it. | no |
| 2023-11 Ackee Blockchain.pdf | FinalProxy | unmatched — not counted | — | Base proxy contract, mentioned in InterchainTokenServiceProxy. | no |
| 2023-11 Ackee Blockchain.pdf | StringToAddress | unmatched — not counted | — | Library, finding I5 mentions it as unused. | no |
| 2023-11 Ackee Blockchain.pdf | ITokenManager | unmatched — not counted | — | Interface for TokenManager, finding W14 targets it. | no |
| 2023-11 Ackee Blockchain.pdf | ITokenManagerDeployer | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IExpressCallHandler | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IAxelarExecutable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IPausable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | Ownable | unmatched — not counted | — | Contract, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IUpgradable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | ITokenManagerType | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IOwnable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IOperatable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IFlowLimit | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IImplementation | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IERC20BurnableMintable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IInterchainToken | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IERC20 | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IERC20Permit | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IDistributable | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | IMulticall | unmatched — not counted | — | Interface, shown in inheritance diagram. | no |
| 2023-11 Ackee Blockchain.pdf | AxelarExecutable | unmatched — not counted | — | Base contract, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | EternalStorage | unmatched — not counted | — | Base contract, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Upgradable | unmatched — not counted | — | Base contract, described in system overview. | no |
| 2023-11 Ackee Blockchain.pdf | Pausable | unmatched — not counted | — | Contract, finding W6 mentions missing events. | no |
| 2023-11 Ackee Blockchain.pdf | Adminable | unmatched — not counted | — | Contract, finding W6 mentions missing events. | no |
| 2023-11 Ackee Blockchain.pdf | Create3Deployer | own contract | Create3Deployer (selected) `0x6513aedb4d1593ba12e50644401d976aebdc90d8` — deployed 2023-10-12 09:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-11 Ackee Blockchain.pdf | ERC20 | unmatched — not counted | — | Standard ERC-20, inherited by InterchainToken. | no |
| 2023-11 Ackee Blockchain.pdf | ERC20Permit | unmatched — not counted | — | Permit extension, inherited by InterchainToken. | no |
| 2023-11 Ackee Blockchain.pdf | SafeTokenTransferFrom | unmatched — not counted | — | Library for safe token transfers, used in findings. | no |
| 2023-11 Ackee Blockchain.pdf | LinkedTokenData | unmatched — not counted | — | Library for token data, described in system overview. | no |
| 2023-12 Ackee Blockchain.pdf | InterchainTokenService | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | InterchainToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | LinkedTokenData | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | LinkerRouter | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenDeployer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | BytecodeServer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | ERC20BurnableMintable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManager | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerCanonical | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerLiquidityPool | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerLockUnlock | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerMintBurn | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | AddressBytesUtils | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | ExpressCallHandler | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | FlowLimit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Pausable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Adminable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | IInterchainTokenExecutable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | InterchainTokenServiceProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StringToAddress | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | RemoteAddressValidator | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Operatable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | NoReEntrancy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StandardizedToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StandardizedTokenLockUnlock | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StandardizedTokenMintBurn | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StandardizedTokenProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Implementation | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Multicall | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | StandardizedTokenDeployer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerLockUnlockFee | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenHandler | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | InterchainTokenFactory | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | BaseInterchainToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | TokenManagerAddressStorage | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | Distributable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | IERC20BurnableMintable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2023-12 Ackee Blockchain.pdf | ERC20Permit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | AxelarGateway | unmatched — not counted | — | Target in finding L1 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | AxelarAuthWeighted | unmatched — not counted | — | Target in finding L1 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | FinalProxy | unmatched — not counted | — | Target in finding W1 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | AxelarGasService | unmatched — not counted | — | Target in finding W2 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | BaseWeightedMultisig | unmatched — not counted | — | Target in findings W3, W4, W6, W7 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | InterchainMultisig | unmatched — not counted | — | Target in findings M1, W5, W8, W9, W10 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | AxelarServiceGovernance | unmatched — not counted | — | Mentioned in System Overview revision 2.0 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | AxelarGatewayWeightedAuth | unmatched — not counted | — | Mentioned in System Overview revision 2.0 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | BaseMultisig | unmatched — not counted | — | Target in finding L2 | no |
| 2024-02 Ackee Blockchain CGP Refactor.pdf | SafeNativeTransfer | unmatched — not counted | — | Target in finding W3 | no |
| 2024-02 Ackee Blockchain.pdf | InterchainTokenService | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | InterchainToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | LinkedTokenData | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | LinkerRouter | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenDeployer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | BytecodeServer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ERC20BurnableMintable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | AddressBytesUtils | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ExpressCallHandler | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | FlowLimit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManager | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerCanonical | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerLiquidityPool | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerLockUnlock | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerMintBurn | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerLockUnlockFee | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StandardizedToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StandardizedTokenLockUnlock | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StandardizedTokenMintBurn | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StandardizedTokenProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Implementation | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Multicall | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StandardizedTokenDeployer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | RemoteAddressValidator | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Operatable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | NoReEntrancy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerAddressStorage | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | InterchainTokenServiceProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IInterchainTokenService | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IInterchainTokenExecutable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ITokenManager | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ITokenManagerDeployer | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IExpressCallHandler | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IAxelarExecutable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IPausable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IUpgradable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IOwnable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IOperatable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IFlowLimit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IImplementation | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IDistributable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IERC20BurnableMintable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IInterchainToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IERC20 | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IERC20Permit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | IMulticall | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenHandler | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | InterchainTokenFactory | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | BaseInterchainToken | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | TokenManagerProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | FinalProxy | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Create3Deployer | own contract | Create3Deployer (selected) `0x6513aedb4d1593ba12e50644401d976aebdc90d8` — deployed 2023-10-12 09:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-02 Ackee Blockchain.pdf | AxelarExecutable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | EternalStorage | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Upgradable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Pausable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Adminable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Ownable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ERC20 | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | ERC20Permit | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | Distributable | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-02 Ackee Blockchain.pdf | StringToAddress | unmatched — not counted | — | Listed in scope and described in system overview sections. | no |
| 2024-04 Ackee Blockchain ITS.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope and described in system overview | no |
| 2024-04 Ackee Blockchain ITS.pdf | InterchainToken | unmatched — not counted | — | listed in scope and described in system overview | no |
| 2024-04 Ackee Blockchain ITS.pdf | LinkedTokenData | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | LinkerRouter | unmatched — not counted | — | listed in scope and described in system overview | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenDeployer | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | BytecodeServer | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | ERC20BurnableMintable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManager | unmatched — not counted | — | listed in scope and described in system overview | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManagerCanonical | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManagerLiquidityPool | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManagerLockUnlock | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManagerMintBurn | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | AddressBytesUtils | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | ExpressCallHandler | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | FlowLimit | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IInterchainTokenExecutable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | InterchainTokenServiceProxy | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenHandler | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | InterchainTokenFactory | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | BaseInterchainToken | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | NoReEntrancy | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Operatable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | ITokenManager | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | ITokenManagerDeployer | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IExpressCallHandler | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IAxelarExecutable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IPausable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Ownable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IUpgradable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IOwnable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | FinalProxy | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | AxelarExecutable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | EternalStorage | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Upgradable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Create3Deployer | own contract | Create3Deployer (selected) `0x6513aedb4d1593ba12e50644401d976aebdc90d8` — deployed 2023-10-12 09:08:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-04 Ackee Blockchain ITS.pdf | AxelarGasService | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | IAxelarGateway | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | StringToAddress | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Adminable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | Pausable | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain ITS.pdf | TokenManagerProxy | unmatched — not counted | — | listed in scope | no |
| 2024-04 Ackee Blockchain.pdf | AxelarAmplifierAuth | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2024-04 Ackee Blockchain.pdf | AxelarAmplifierGateway | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2024-04 Ackee Blockchain.pdf | BaseWeightedMultisig | unmatched — not counted | — | listed in scope and described in System Overview | no |
| 2024-06 NCC.pdf | AxelarAmplifierGateway | unmatched — not counted | — | listed in scope and finding details | no |
| 2024-06 NCC.pdf | BaseWeightedMultisig | unmatched — not counted | — | finding details | no |
| 2024-06 NCC.pdf | InterchainMultisig | unmatched — not counted | — | engagement notes | no |
| 2024-06 NCC.pdf | WeightedMultisigTypes | unmatched — not counted | — | engagement notes | no |
| 2024-06 Ottersec.pdf | cgp-sui | unmatched — not counted | — | listed in scope section as the program name | no |
| 2024-07 Ackee Blockchain.pdf | AxelarAmplifierGateway | unmatched — not counted | — | listed in scope and system overview | no |
| 2024-07 Ackee Blockchain.pdf | BaseWeightedMultisig | unmatched — not counted | — | listed in scope and system overview | no |
| 2024-07 Ackee Blockchain.pdf | AxelarAmplifierAuth | unmatched — not counted | — | listed in scope and system overview | no |
| 2024-07 Ackee Blockchain.pdf | BaseAmplifierGateway | unmatched — not counted | — | listed in scope for revision 2.0 | no |
| 2024-07 Ackee Blockchain.pdf | AxelarAmplifierGatewayProxy | unmatched — not counted | — | listed in scope for revision 2.0 | no |
| 2024-07 Ackee Blockchain.pdf | IAxelarAmplifierGateway | unmatched — not counted | — | mentioned in finding I1 | no |
| 2024-11 Ackee Blockchain.pdf | InterchainTokenFactory | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | TokenHandler | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | TokenManagerDeployer | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | InterchainTokenDeployer | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | Create3AddressFixed | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | GatewayCaller | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | Create3Fixed | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | TokenManager | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | InterchainTokenServiceTypes | unmatched — not counted | — | listed in scope | no |
| 2024-11 Ackee Blockchain.pdf | TokenManagerProxy | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | InterchainToken | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | RolesBase | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ITokenManagerDeployer | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ITokenManager | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | IInterchainTokenService | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | IInterchainTokenFactory | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ERC20Permit | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | Minter | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | IInterchainToken | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | InterchainTokenStandard | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | BaseProxy | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ITokenManagerProxy | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | IBaseTokenManager | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | IProxy | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ITokenHandler | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ITokenManagerType | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 Ackee Blockchain.pdf | ReentrancyGuard | unmatched — not counted | — | mentioned in findings | no |
| 2024-11 NCC.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope as CosmWasm contract | no |
| 2024-11 NCC.pdf | AxelarnetGateway | unmatched — not counted | — | listed in scope as CosmWasm contract | no |
| 2024-11 NCC.pdf | Keeper | unmatched — not counted | — | finding references Keeper methods | no |
| 2024-11 NCC.pdf | Counter | unmatched — not counted | — | finding references Counter type | no |
| 2024-11 NCC_ITS.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope as CosmWasm contract | no |
| 2024-11 NCC_ITS.pdf | AxelarnetGateway | unmatched — not counted | — | listed in scope as CosmWasm contract | no |
| 2024-11 NCC_ITS.pdf | Keeper | unmatched — not counted | — | mentioned in finding details | no |
| 2024-11 NCC_ITS.pdf | Counter | unmatched — not counted | — | mentioned in finding details | no |
| 2024-11 Ottersec - Sui.pdf | c gp-sui | unmatched — not counted | — | Scope section: 'Name: cgp-sui, Description: An implementation of the Axelar gateway for the Sui blockchain.' | no |
| 2024-11 Ottersec_Sui_Gateway.pdf | c gp-sui | unmatched — not counted | — | Scope section: 'Name: cgp-sui, Description: An implementation of the Axelar gateway for the Sui blockchain.' | no |
| 2025-01 Ackee_ITS.pdf | InterchainTokenFactory | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | InterchainTokenService | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | TokenHandler | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | TokenManagerDeployer | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | InterchainTokenDeployer | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | Create3AddressFixed | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | GatewayCaller | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | Create3Fixed | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | TokenManager | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | InterchainTokenServiceTypes | unmatched — not counted | — | listed in scope | no |
| 2025-01 Ackee_ITS.pdf | TokenManagerProxy | unmatched — not counted | — | mentioned in findings (W2, W4) | no |
| 2025-01 Ackee_ITS.pdf | InterchainToken | unmatched — not counted | — | mentioned in findings (I4) | no |
| 2025-01 Ackee_ITS.pdf | RolesBase | unmatched — not counted | — | mentioned in findings (I1) | no |
| 2025-01 Ackee_ITS.pdf | ITokenManagerDeployer | unmatched — not counted | — | mentioned in findings (I8) | no |
| 2025-01 Ackee_ITS.pdf | ITokenManager | unmatched — not counted | — | mentioned in findings (I8) | no |
| 2025-01 Ackee_ITS.pdf | IInterchainTokenService | unmatched — not counted | — | mentioned in findings (I8) | no |
| 2025-01 Ackee_ITS.pdf | IInterchainTokenFactory | unmatched — not counted | — | mentioned in findings (I8) | no |
| 2025-01 Ackee_ITS.pdf | ERC20Permit | unmatched — not counted | — | mentioned in findings (I5) | no |
| 2025-01 FYEO_Soroban.pdf | axelar-gas-service | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | axelar-gateway | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | axelar-operators | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | example | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | interchain-token | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | interchain-token-service | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | upgrader | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | axelar-soroban-std | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_Soroban.pdf | axelar-soroban-std-derive | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_XRPL.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_XRPL.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_XRPL.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope table | no |
| 2025-01 FYEO_XRPL.pdf | xrpl-types | unmatched — not counted | — | listed in scope table | no |
| 2025-01 NCC_XRPL_v1.3.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope | no |
| 2025-01 NCC_XRPL_v1.3.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope | no |
| 2025-01 NCC_XRPL_v1.3.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope | no |
| 2025-01 NCC_XRPL_v1.3.pdf | xrpl-types | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl_multisig | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl_verify_msg | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope | no |
| 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf | xrpl-types | unmatched — not counted | — | listed in scope | no |
| 2025-03 NCC_XRPL_phase2.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope | no |
| 2025-03 NCC_XRPL_phase2.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope | no |
| 2025-03 NCC_XRPL_phase2.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope | no |
| 2025-03 NCC_XRPL_phase2.pdf | xrpl-types | unmatched — not counted | — | listed in scope | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope table and target data | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope table and target data | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope table and target data | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | xrpl-types | unmatched — not counted | — | listed in scope table and target data | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | ampd | unmatched — not counted | — | listed in scope table and target data | no |
| 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf | deploy-multisig.js | unmatched — not counted | — | mentioned in scope paragraph | no |
| 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf | stellar_upgrader | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf | stellar_interchain_token_service | unmatched — not counted | — | mentioned in scope and findings | no |
| 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf | stellar_interchain_token | unmatched — not counted | — | mentioned in findings | no |
| 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf | flow_limit | unmatched — not counted | — | mentioned in findings | no |
| 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf | stellar_example | unmatched — not counted | — | mentioned in findings | no |
| 2025-04-Axelar-mvx-gas-service.pdf | GasService | unmatched — not counted | — | Audit scope: MultiversX smart contract path: ./gas-service/ | no |
| 2025-04-Axelar-mvx-gateway.pdf | gateway | unmatched — not counted | — | Initial scope: MultiversX smart contract path: ./gateway/; Final scope: MultiversX smart contract path: ./gateway/ | no |
| 2025-04-Axelar-mvx-governance-1.pdf | Governance | unmatched — not counted | — | listed in scope as MultiversX smart contract path: ./governance/ | no |
| 2025-04-Axelar-mvx-governance-2.pdf | Governance | unmatched — not counted | — | listed in scope as MultiversX smart contract path: ./governance/ | no |
| 2025-04-Axelar-mvx-interchain-token-factory.pdf | interchain-token-factory | unmatched — not counted | — | Listed in scope as MultiversX smart contract path | no |
| 2025-04-Axelar-mvx-interchain-token-service-proxy.pdf | interchain-token-service-proxy | unmatched — not counted | — | Listed in scope section: 'MultiversX smart contract path: ./interchain-token-service-proxy/' | no |
| 2025-04-Axelar-mvx-token-manager.pdf | token-manager | unmatched — not counted | — | Initial scope: MultiversX smart contract path: ./token-manager/; Final scope: MultiversX smart contract path: ./token-manager/ | no |
| 2025-05 NCC_XRPL_phase3.pdf | xrpl-multisig-prover | unmatched — not counted | — | listed in scope | no |
| 2025-05 NCC_XRPL_phase3.pdf | xrpl-gateway | unmatched — not counted | — | listed in scope | no |
| 2025-05 NCC_XRPL_phase3.pdf | xrpl-voting-verifier | unmatched — not counted | — | listed in scope | no |
| 2025-05 NCC_XRPL_phase3.pdf | xrpl-types | unmatched — not counted | — | listed in scope | no |
| 2025-05 NCC_XRPL_phase3.pdf | ampd | unmatched — not counted | — | listed in scope | no |
| 2025-05 NCC_XRPL_phase3.pdf | deploy-multisig.js | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Gas Service | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Gateway | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Interchain Token Service | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Multicall | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Governance | unmatched — not counted | — | listed in scope | no |
| 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf | Axelar Memo | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 354 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 57
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 530 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=54, low=6, medium=3
- Match method counts: unique_name=5

Zero-match audit list:

- [16712] 2021-11 Adrian and Lucas.pdf
- [16713] 2021-11 Commonprefix.pdf
- [16714] 2021-12 Cure53.pdf
- [16715] 2022-02 Ackee blockchain.pdf
- [16716] 2022-03 Commonprefix.pdf
- [16717] 2022-04 Ackee blockchain.pdf
- [16718] 2022-04 Certik.pdf
- [16719] 2022-04 Cure53.pdf
- [16720] 2022-05 Ackee blockchain.pdf
- [16721] 2022-06 Ackee blockchain.pdf
- [16722] 2022-07 Ackee blockchain-v2.pdf
- [16723] 2022-07 Ackee blockchain.pdf
- [16724] 2022-08 Ackee blockchain.pdf
- [16725] 2022-08 Chaintroopers.pdf
- [16726] 2022-09 Ackee Blockchain.pdf
- [16728] 2022-12 Ackee Blockchain.pdf
- [16729] 2023-01 Ackee Blockchain.pdf
- [16730] 2023-02 Ackee Blockchain-2.pdf
- [16732] 2023-02 Ackee Blockchain.pdf
- [16733] 2023-04 Ackee Blockchain.pdf
- [16734] 2023-04 Informal Systems.pdf
- [16735] 2023-08 Yaar Hahn Governance.pdf
- [16736] 2023-08 Yaar Hahn ITS.pdf
- [16737] 2023-10 Least Authority.pdf
- [16739] 2023-12 Ackee Blockchain.pdf
- [16740] 2024-02 Ackee Blockchain CGP Refactor.pdf
- [16742] 2024-03 NCC.pdf
- [16744] 2024-04 Ackee Blockchain.pdf
- [16745] 2024-05 Halborn.pdf
- [16746] 2024-06 NCC.pdf
- [16747] 2024-06 Ottersec.pdf
- [16748] 2024-07 Ackee Blockchain.pdf
- [16749] 2024-11 Ackee Blockchain.pdf
- [16750] 2024-11 NCC.pdf
- [16751] 2024-11 NCC_ITS.pdf
- [16752] 2024-11 Ottersec - Sui.pdf
- [16753] 2024-11 Ottersec_Sui_Gateway.pdf
- [16754] 2025-01 Ackee_ITS.pdf
- [16755] 2025-01 FYEO_Soroban.pdf
- [16756] 2025-01 FYEO_XRPL.pdf
- [16757] 2025-01 NCC_XRPL_v1.3.pdf
- [16758] 2025-01_NCC_Axelar_E010021_XRPL_Report_v1.2.pdf
- [16759] 2025-03 NCC_XRPL_phase2.pdf
- [16760] 2025-04 NCC _ XRPL _ Final v1.0_phase3.pdf
- [16761] 2025-04 axelar_cgp_soroban_stellar_audit_final.pdf
- [16762] 2025-04-Axelar-mvx-gas-service.pdf
- [16763] 2025-04-Axelar-mvx-gateway.pdf
- [16764] 2025-04-Axelar-mvx-governance-1.pdf
- [16765] 2025-04-Axelar-mvx-governance-2.pdf
- [16766] 2025-04-Axelar-mvx-interchain-token-factory.pdf
- [16767] 2025-04-Axelar-mvx-interchain-token-service-proxy.pdf
- [16768] 2025-04-Axelar-mvx-interchain-token-service.pdf
- [16769] 2025-04-Axelar-mvx-token-manager.pdf
- [16770] 2025-05 NCC_XRPL_phase3.pdf
- [16771] 2025-08_ackee-blockchain-axelar-program-suite-for-solana-report.pdf
- [16773] Flow
- [16774] here

Fork inheritance lineage and inherited audits are included when available.
