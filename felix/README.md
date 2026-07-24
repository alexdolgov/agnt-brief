# Agentic Audit Brief: Felix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Felix (`felix`)
- Website: [https://www.usefelix.xyz/](https://www.usefelix.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, hyperliquid
- Contract surface: 239 unique implementations (239 raw deployments)
- Coverage basis: 0/44 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $109,598,043.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Felix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 46 contract row(s) across ethereum, hyperliquid. Structural roles: 43 unclassified, 2 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 46
- Structural roles: unclassified (43), core (2), supporting (1)
- Contract kinds: contract (46)
- Detected standards: erc20 (2), erc20permit (2), erc1967proxy (1), erc4626 (1), multicall (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 45 contracts are derived from known codebases. 45 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Collateral Registry (`0x9de1e57049c475736289cb006212f3e1dce4711b`, chain 999)
- feUBTC decimals wrapper (`0xefbd9cfe88235f0e648aefb52c8e8dc152a9ad6f`, chain 999)
- feUSD (`0x02c6a2fa58cc01a18b8d9e00ea48d65e4df26c70`, chain 999)
- Hint Helpers (`0xa32e89c658f7fdcc0bdb2717f253bacd99f864d4`, chain 999)
- HYPE Lending Vault (`0x2900abd73631b2f60747e687095537b673c06a76`, chain 999)
- kHYPE Active Pool (`0xbfd0b103a49faf426f36864d19f5d871bf411a5a`, chain 999)
- kHYPE Address Registry (`0x382d2fe4eed8e35a5855321e62fd45ad60ca589f`, chain 999)
- kHYPE Borrower Operations (`0x3a2a181ab6e4ffb77c87ee201041a0806dadc397`, chain 999)
- kHYPE Collateral Surplus Pool (`0x246aceb6b121fe2cb7ec76fcf8e667fb8096f7b0`, chain 999)
- kHYPE Default Pool (`0xee6d1804feb4817d6db77f6f31b86673d7fc195f`, chain 999)
- kHYPE Gas Pool (`0xea5d5a859be7c96aa0481ed35170af8e277a9f8e`, chain 999)
- kHYPE Price Feed (`0x0a04e685f12e47b22b03c3763add63f1dd73265c`, chain 999)
- kHYPE Sorted Troves (`0x6bc81472c10ec526c14c8b0e8faa282f9368f86f`, chain 999)
- kHYPE Stability Pool (`0x56a346e0730cb209a93964c41cd36098030779ab`, chain 999)
- kHYPE Trove Manager (`0x7c07bb77b1cf9a5b40d92f805c10d90c90957e4a`, chain 999)
- kHYPE Trove NFT (`0x9d08780deec2270b8296f520b3fb28346abf6036`, chain 999)
- MetaMorphoV1_1 (`0x207ccae51ad2e1c240c4ab4c94b670d438d2201c`, chain 999)
- UBTC Active Pool (`0x8d99575ebbbda038a626ca769561c16fdd7a5939`, chain 999)
- UBTC Address Registry (`0xfc4e20bd9f0e4f8782bea92a7bd8002367882407`, chain 999)
- UBTC Borrower Operations (`0x36b7bd65276eda7cdc5f730da5cdb7ee7736672e`, chain 999)
- UBTC Collateral Surplus Pool (`0xe7aba857f8e2c95462e69b93c7ea78ac19aafe38`, chain 999)
- UBTC Default Pool (`0x50743a84c68a9d14d93364ed31afa4012183df1c`, chain 999)
- UBTC Gas Pool (`0x8b71c92edf02dff693042e4e808d0568ccf0a137`, chain 999)
- UBTC Price Feed (`0xf59f338424062dd1d44a9b4dd2721128a45358ab`, chain 999)
- UBTC Sorted Troves (`0x642d979341eaac9c10623f5a58283aa72f6e2fa9`, chain 999)
- UBTC Stability Pool (`0xabf0369530205ae56dd4c49629474c65d1168924`, chain 999)
- UBTC Trove Manager (`0xbbe5f227275f24b64bd290a91f55723a00214885`, chain 999)
- UBTC Trove NFT (`0xad8a43ac8da98990efa4d5ec7b91135965d5846b`, chain 999)
- USDe Lending Vault (`0x835febf893c6dddee5cf762b0f8e31c5b06938ab`, chain 999)
- USDhl Frontier Lending Vault (`0x66c71204b70ae27be6dc3eb41f9af5868e68fdb6`, chain 999)
- USDhl Lending Vault (`0x9c59a9389d8f72de2cdaf1126f36ea4790e2275e`, chain 999)
- USDT0 Frontier Lending Vault (`0x9896a8605763106e57a51aa0a97fe8099e806bb3`, chain 999)
- USDT0 Lending Vault (`0xfc5126377f0efc0041c0969ef9ba903ce67d151e`, chain 999)
- WHYPE Active Pool (`0x39ebba742b6917d49d4a9ac7cf5c70f84d34cc9e`, chain 999)
- WHYPE Address Registry (`0x7201fb5c3ba06f10a858819f62221ae2f473815d`, chain 999)
- WHYPE Borrower Operations (`0x5b271dc20ba7beb8eee276eb4f1644b6a217f0a3`, chain 999)
- WHYPE Collateral Surplus Pool (`0x9182e36bd7cceb71812c766c4464208ad9c122ca`, chain 999)
- WHYPE Default Pool (`0xa1e95e74d07fec324a82cd2ef19ebcb33907c605`, chain 999)
- WHYPE Gas Pool (`0x7560059081ede2ff6c6b980fd1ee9a53df4e9935`, chain 999)
- WHYPE Price Feed (`0x12a1868b89789900e413a6241ca9032dd1873a51`, chain 999)
- WHYPE Sorted Troves (`0xd1caa4218808eb94d36e1df7247f7406f43f2ef6`, chain 999)
- WHYPE Stability Pool (`0x576c9c501473e01ae23748de28415a74425efd6b`, chain 999)
- WHYPE Trove Manager (`0x3100f4e7bda2ed2452d9a57eb30260ab071bbe62`, chain 999)
- WHYPE Trove NFT (`0x5ad1512e7006fdbd0f3ebb8aa35c5e9234a03aa7`, chain 999)
- WHYPE Zapper (`0x999876bc29bc2251539c900a1bcfc6c934991f49`, chain 999)

## Contract Surface Quality

- Logic-topography rows: 46; live-surface rows included: 46 (44 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/69 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/44 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 23 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 171 discovered implementations shown in the inventory but excluded from coverage (8 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 45 of 239 unique; 194 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/46
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 193
- Unique implementations: 239
- Raw deployments: 239
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Collateral Registry | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386556 | `0x9de1e57049c475736289cb006212f3e1dce4711b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-386577 | `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` | ⚠️ Unaudited |
| feUSD | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386502 | `0x02c6a2fa58cc01a18b8d9e00ea48d65e4df26c70` | ⚠️ Unaudited |
| Hint Helpers | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386559 | `0xa32e89c658f7fdcc0bdb2717f253bacd99f864d4` | ⚠️ Unaudited |
| HYPE Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386509 | `0x2900abd73631b2f60747e687095537b673c06a76` | ⚠️ Unaudited |
| kHYPE Active Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386566 | `0xbfd0b103a49faf426f36864d19f5d871bf411a5a` | ⚠️ Unaudited |
| kHYPE Address Registry | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386514 | `0x382d2fe4eed8e35a5855321e62fd45ad60ca589f` | ⚠️ Unaudited |
| kHYPE Borrower Operations | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386517 | `0x3a2a181ab6e4ffb77c87ee201041a0806dadc397` | ⚠️ Unaudited |
| kHYPE Collateral Surplus Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386508 | `0x246aceb6b121fe2cb7ec76fcf8e667fb8096f7b0` | ⚠️ Unaudited |
| kHYPE Default Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386571 | `0xee6d1804feb4817d6db77f6f31b86673d7fc195f` | ⚠️ Unaudited |
| kHYPE Gas Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386570 | `0xea5d5a859be7c96aa0481ed35170af8e277a9f8e` | ⚠️ Unaudited |
| kHYPE Price Feed | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386504 | `0x0a04e685f12e47b22b03c3763add63f1dd73265c` | ⚠️ Unaudited |
| kHYPE Sorted Troves | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386535 | `0x6bc81472c10ec526c14c8b0e8faa282f9368f86f` | ⚠️ Unaudited |
| kHYPE Stability Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386521 | `0x56a346e0730cb209a93964c41cd36098030779ab` | ⚠️ Unaudited |
| kHYPE Trove Manager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386543 | `0x7c07bb77b1cf9a5b40d92f805c10d90c90957e4a` | ⚠️ Unaudited |
| kHYPE Trove NFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386555 | `0x9d08780deec2270b8296f520b3fb28346abf6036` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386507 | `0x207ccae51ad2e1c240c4ab4c94b670d438d2201c` | ⚠️ Unaudited |
| MToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-386500 | `0x866a2bf4e572cbcf37d5071a7a58503bfb36be1b` | ⚠️ Unaudited |
| UBTC Active Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386549 | `0x8d99575ebbbda038a626ca769561c16fdd7a5939` | ⚠️ Unaudited |
| UBTC Address Registry | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386574 | `0xfc4e20bd9f0e4f8782bea92a7bd8002367882407` | ⚠️ Unaudited |
| UBTC Borrower Operations | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386512 | `0x36b7bd65276eda7cdc5f730da5cdb7ee7736672e` | ⚠️ Unaudited |
| UBTC Collateral Surplus Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386569 | `0xe7aba857f8e2c95462e69b93c7ea78ac19aafe38` | ⚠️ Unaudited |
| UBTC Default Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386518 | `0x50743a84c68a9d14d93364ed31afa4012183df1c` | ⚠️ Unaudited |
| UBTC Gas Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386548 | `0x8b71c92edf02dff693042e4e808d0568ccf0a137` | ⚠️ Unaudited |
| UBTC Price Feed | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386573 | `0xf59f338424062dd1d44a9b4dd2721128a45358ab` | ⚠️ Unaudited |
| UBTC Sorted Troves | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386529 | `0x642d979341eaac9c10623f5a58283aa72f6e2fa9` | ⚠️ Unaudited |
| UBTC Stability Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386561 | `0xabf0369530205ae56dd4c49629474c65d1168924` | ⚠️ Unaudited |
| UBTC Trove Manager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386565 | `0xbbe5f227275f24b64bd290a91f55723a00214885` | ⚠️ Unaudited |
| UBTC Trove NFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386562 | `0xad8a43ac8da98990efa4d5ec7b91135965d5846b` | ⚠️ Unaudited |
| USDe Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386547 | `0x835febf893c6dddee5cf762b0f8e31c5b06938ab` | ⚠️ Unaudited |
| USDhl Frontier Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386531 | `0x66c71204b70ae27be6dc3eb41f9af5868e68fdb6` | ⚠️ Unaudited |
| USDhl Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386554 | `0x9c59a9389d8f72de2cdaf1126f36ea4790e2275e` | ⚠️ Unaudited |
| USDT0 Frontier Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386552 | `0x9896a8605763106e57a51aa0a97fe8099e806bb3` | ⚠️ Unaudited |
| USDT0 Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386575 | `0xfc5126377f0efc0041c0969ef9ba903ce67d151e` | ⚠️ Unaudited |
| WHYPE Active Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386516 | `0x39ebba742b6917d49d4a9ac7cf5c70f84d34cc9e` | ⚠️ Unaudited |
| WHYPE Address Registry | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386537 | `0x7201fb5c3ba06f10a858819f62221ae2f473815d` | ⚠️ Unaudited |
| WHYPE Borrower Operations | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386525 | `0x5b271dc20ba7beb8eee276eb4f1644b6a217f0a3` | ⚠️ Unaudited |
| WHYPE Collateral Surplus Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386550 | `0x9182e36bd7cceb71812c766c4464208ad9c122ca` | ⚠️ Unaudited |
| WHYPE Default Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386558 | `0xa1e95e74d07fec324a82cd2ef19ebcb33907c605` | ⚠️ Unaudited |
| WHYPE Gas Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386539 | `0x7560059081ede2ff6c6b980fd1ee9a53df4e9935` | ⚠️ Unaudited |
| WHYPE Price Feed | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386505 | `0x12a1868b89789900e413a6241ca9032dd1873a51` | ⚠️ Unaudited |
| WHYPE Sorted Troves | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386567 | `0xd1caa4218808eb94d36e1df7247f7406f43f2ef6` | ⚠️ Unaudited |
| WHYPE Stability Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386522 | `0x576c9c501473e01ae23748de28415a74425efd6b` | ⚠️ Unaudited |
| WHYPE Trove Manager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386510 | `0x3100f4e7bda2ed2452d9a57eb30260ab071bbe62` | ⚠️ Unaudited |
| WHYPE Trove NFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386524 | `0x5ad1512e7006fdbd0f3ebb8aa35c5e9234a03aa7` | ⚠️ Unaudited |
| WHYPE Zapper | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386553 | `0x999876bc29bc2251539c900a1bcfc6c934991f49` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (193)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| feUBTC decimals wrapper | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386572 | `0xefbd9cfe88235f0e648aefb52c8e8dc152a9ad6f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-386499 | `0x437cc33344a0b27a429f795ff6b469c72698b291` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-386501 | `0x970a7749ecaa4394c8b2bf5f2471f41fd6b79288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x03322a6c93bb3ccfddd90679df054baaa7ec7956` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386503 | `0x067e69ad6bdb8ee95cac31b34626f48eb6f169a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x068f321fa8fb9f0d135f290ef6a3e2813e1c8a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x088a72a690109ed2dc7404f10525f7774cf6d614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x097321aec5c6cfd19a71e1ab7000372bb230c135` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x09e6072bd4b73002a0d7a71910b47e5fbbc9f8c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0a4aed993c9671a08797fc2f466b17226be17683` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0b89eb82a09e9c6a00e5ae1879a4de66decfa52e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0cc11d07c37ab2bf12b039651b641915b42e1373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x11e10b315363d43e46b04f139fc051164e0798a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x12690a56d6764c31fada397567d4611677e61a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x13c60e4cc2cc8602a5f253113ef56bce60793030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x17adbfdffb706df0b333375225f52acf9569da49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x186744e139f2dcd6b9584d107bf1aa908a0f5bca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1a7689c3b783eb37550efbb9c81e7f468f7034fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1aae0d2aa45ce2e934f4032b18c8dd2113c7b854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1c70dab81c8ac04172dca7220ec8ce4bfc9da197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x1f3b78a95b126d63857f143c44f155ce90678098` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x210b520e9650c314633a49fedb373b68572c5ca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2277b1f18f5e56d4c8f3a96b52cc4cb3e36b1fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x243f601bd29398e03a471369aab91cd214ea910a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x25a6cbe70d97099882193d0df69d6f2de7475033` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2796fafba960b9b6e5f1a0f729eb29486a5aaf93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x27ec642013bcb3d80ca3706599d3cda04f6f4452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2813cb2294d8fa0e9ede8c467001c0f52c0e074d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x281d399566d08524cf012687905a9a2995e30a47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x28c7fe8418b1473b4d28733522621ff231a32201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2aa1fc569a870fc04e0b15db1bed5219571c1fba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2df68c4305ceb677bec738a8396e121b8b1addea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2fdeda71887eb2bbe7a9beda413235563ef3f8c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x31a2b266a3b484420dc80842819d2c82e96aa7b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386511 | `0x339d10ba20f3575ec9b44275f978dd38386f0f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x33af3c2540ba72054e044efe504867b39ae421f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x33daea58563777dda89ac469e0072e0ad269caa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x343966ab7cda4c775aeeabd6a39072ec60352125` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x35366a5859e1fcf7d9ba264554a3b0850162e020` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386513 | `0x36f586a30502ae3afb555b8aa4dcc05d233c2ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x372a7f2daa26535ec24953f82980bdc03febcae1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x378703b5bc806f1e9ee4a2fdf50d01bdb96fb8b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386515 | `0x389c03c1f77981d158fbe286e7cafac2bb2fe83e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x39750fa0944f7dfb67a3cad1b7bbe8a8acc75503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3b4575e689ded21caad31d64c4df1f10f3b2cedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3c0feeeaf4d82587b9421b25a6213949ca36f681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3da883c7b3b3f838d02a3cb25b3f987e5bb1332e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3e46a36debc92d845af452a6d5b3395acd21144e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3ed69b995ed45de67446faca3d21c6cd6d53cf9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x408c905ac9159dfd9c69c1968f43ce0e5f266139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x420bb9667b304b0a093a2b6687a92e40baa3cba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x42a105f3249a75ea74277b52a9ee79224fb9203d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x42f1a9f123ba2d4265892b5972472185317b4239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x43cccf67e57d4b7c31ed679b5d3db6dd3966594f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x44415dbd00a9a0851146a7ad9ff7e380b759c6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x444322c3c54908fa5a7842a4f3ff085ec67f2598` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4469b689ece024572ff1b4698c33f4704457a97e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x44a600c031dbdf652500f4a6d84b168056f13692` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x45354b1e615fc2b8e2aa668f56ec9644374ab7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4536974b44cdef9a5e036f24c65385dacc47512d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x46a08c702cf2bb8830b13c4a20c137f0624cc224` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x46bb738e0fcccf5b408b1f2c0509c42d33095a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x46e223d4fe80dd89bcbb54d8c9aadb48f0419315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x473c5e001615e64a24d6c961ba1ab2642e797f2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4955b4d7007ef53c9841ffbdd087847bc903c2f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4b180800f6322adb1130271a3f55416165936700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4c168ca32001e0e3c4de58bbb0a10533f9510982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4cfb72ddea9b2c6cff4a02a162e7b3c57446a6b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4f032460d3e14c461ffb26fcb9be0c5b5e3f41f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x525cd75b841171bc8b7cdc885bc972319bd6166a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386519 | `0x535a9ff6bfd0d9f1b64fe03f185b0af8ddeb7bd1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-386520 | `0x5555555555555555555555555555555555555555` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x568d1c475cd6937b401124423bb3d7c6a3ecce74` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386523 | `0x58446c58caa8a6f6cc8be343f812ebf0b997c001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x58632800d27714c49efab222c6cae03ea966f2b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x58e9742b328a265fc0f1aef0ea1c5f4a9a6242b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5b7749010edbceba3feb611275df3797375d9e6d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386527 | `0x5db69b925c35b85905255f0b9443bfefda97fce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5e2b78aad62bf73d1096e03eb7f3e1fb6fea28a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5ea44b91d102ad8b617154616668d0593fbb01fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5fcae242962f54bb4063a7f2957111200d3b7475` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x648f01686d59b509a1ca54dc6f3e32ad9bde5bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x656d2c7a970d13073a6a58fae18f39abf31fae41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x67807fba73f8bbb55e050108ba33aec9e58e02ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x67cdae04e533b1b15907d93783e955d789ddc71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x687ab202ca714d4bece9dbd438466b4cd8a6a696` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-386532 | `0x68e37de8d93d3496ae143f2e900490f6280c57cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386534 | `0x6a1ce00901c3deb2683a6c63fcd158cc3adc2740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6a4b9166882ecd01946fdb21626190ac42772f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6ace545200c5cebfc456f210b08e342f5dc6f480` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6c09ce2c19699ece1ea19f10557fa28b5cf783b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6d154b2eccaf6c9d2ae0d07897d4cf522ecb2e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6df0a52f0b8d90db86ee7e86562d09a2d6f64145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x708809ac6ac45ba95532c961fd46228fa6dd761e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x71347b3e13c2ba423bbb423339a45b530c86d239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x72b7c2001f19a304b414d6037294ef45bde30807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x72c97ee78af0b5df8222fe56dd7a6bf5058405c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x75d519d1323d97b75a074b686c40416bd845cbaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x797098ee74c052a6e1122e7fad90d5dfdb1182f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x79a85dbcd70ca95e196733efe79c0fe5ffc299e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x79c91a98a26f6f729bc43fc5c09a382e86b965cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x79d4577f634891023a210bab27457e46bb098740` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386541 | `0x7abca40474d6b5f000f801d7fe7e0df4c89425ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386545 | `0x7d29515fc4eaef2a01c46218b4cb8d2d8ae437e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7dd3accfb2c2b40319f285763a996d8e0577161a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x82848d8fa8f41f5306ba2a5c3027e18e3a683d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x83e10abcdd67a0604ef319851255fb0fa5b34d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x859bfb81f46edba5634757b66132786743f62eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x87b1706f234071a751ed28908d90b7451155ddf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x881bc334801cbcb6fdb49a356e113a38771f0211` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x88251b943f7b46290cac5eebc3e65c6479ad51ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8b8ff7830dedef5c639b593425b012f0ce92c3d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8d723e5cacc11745a374ac170dafa895448c947d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8f7f4483647647c58939b1563c1fc6287ae36716` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8fa3d8b1a532cd3d626da2f96876e905bf647407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8fd90c7f4b74a4f45239390be732905bfd82ae3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x91f5acd082b7274fb2adf8fe99607cc185aa1a01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x92773eac2b2649a003269e00ad6f91c9e4773ba3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-386551 | `0x94e8396e0869c9f2200760af0621afd240e1cf38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x999d70869b2d43ecccb790576a47d2fc848e3a69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9b4d34d452f26e07fb5d80da2b98ce539d62c220` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9b59020b12c247babcfe2893a0c19bfa4a2dfbe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x9f2c2cf7ec8c03e8cf3c2398b5b138b5983ea9dc` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-386557 | `0x9fdbda0a5e284c32744d2f17ee5c74b284993463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa13965eda29c632193c8660f734f4a75ca6cf1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa378ec0cfedd75e3a235ddd3925818677a85e2db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa3d951d348e722aeac0af91061fd760a79792110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa4c9c887a5d8dea0fecdebac22a4ffef7f13fdc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa8168e6a0bafda3b26bd416111e29a88ae67cee8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386560 | `0xa82c325553baee63bd97604e10a7cc40482008a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xab73c0ab9e4b931769373bd0c6480c022119d74c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xac55600f0d24b1a1cc3d2d6878cc96634e148cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xacd26233a4f1c7cc0f5175e64f44c8fa7d89601d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386563 | `0xadfba621a75beced7dd1727b2067047b7eeedc8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb109a8c9988e9296c29120807d7da17ac05261ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb30a659c907be4cd55a5a2652cb3c797b3edbc2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386564 | `0xb50a96253abdf803d85efcdce07ad8becbc52bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb5b7a785bb0645835c93640bb6631daedf42ae1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb6a5c934b3b1a9b43f8afb123e55577ab389732a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb825b75ebb1324f5cc171fce07b4c06b1b57ad36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb862f53501fa52f06937b56e0d8dc97e7b6f2458` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb96f07367e69e86d6e9c3f29215885104813eeae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb9be1aed5ba289510cdfef80700d22d4f25459a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb9cc2693c763a745fdcbc7a94d58bbd4a889e8a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb9fe768e819979cb32481b9451c337f967b78a60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbba156d79950670c5bc9f0d366effb016705ee50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbd647dbccae38a49149c4f3152b26d2a6ba1ee6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbe6727b535545c67d5caa73dea54865b92cf7907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xbfcf769c44976b64dc8bb31c25104b6ee62724c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc1e63be54dc6f977318452db03fa2ed34a4c0bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc43057a5fe16594961928cce9f217b2dcb5a7743` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc7065e637e49e2ae5540889bc3c116da6ef88645` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc8d13dc9edc47e3559bdcf93bb04dda9142bbe7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xccba78e1e8a88f6c4c45badede69af3bde3c19be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcdab976f598af1f9cc4d3b77c017f959229879c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcea049cdd03a94ba7105fd3deb8391092474ec61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xcf12bb6b4c6ffd8da245dada215aa14e6f3ff7b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd06dfc33388d2c71a50eadd2a312b0dca9e17672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd21ddb20370c1c2abc9d729615317b1ba0a142d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd2fe30df10e6c130fa23da2db6c68b48c8584c4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386568 | `0xd389c600b302c05e619a25112b27ea07c62a6c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd49d896669b1ae2542795e28d05c4d9cd6edad62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd555ccdacac284f8ca02f8f7027d4cd09ff878a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd5ed360da3681d9c117e76f4e8aff8678db0f0d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd770c65f4505232eaf7c3cad6d6347ce210eb060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd9d236f9fa38e5ae0c33170a23f09ed50c3e0617` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdd88b1c4f32013687420d17ef1988d8ab8991fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdf1293b46d3d8f6c090ab98094805db68922ce30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xdf20073d9e58224305d748c9ff80cc54e1cc7627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe06ed7bcfe20c273c1e7806bdc3a423919e22989` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe2880920dd79bd2d8f8d0f3b0c596d707609a06d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe32a643d830ba1d9e61497b7906dc184ea202e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe36de6875f1e372e34ccd8b5e22f343a9286c0a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe60dd45eba5655e31ca1e61bead4f983b3c4a83b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe658927672967c0e3cc50019c288ff4013fb89af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe9866b25c2316a5c277e0137cb5229398ef8f803` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xec13effc9e631a4e83f3fa8f6ac2a1c8b08a9a34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xed5ef2986c60fd2ccbbde17953ae3aa4dc2eca3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xee88c18dcc68667060b3988358c35e7c47145bee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xeee571012c07032907b952714c48c81f8999e96a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xef5d2b08e76beb742c41aef80324509a5ff2a808` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xef8407565b0924ebfcb0fb02c2318ca6d91f780c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf06a048d6eb040912f1babcee251914c5ef40bda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf42fdd953e68d0010f5fa9d61ef1ba0fc997ef2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf4617fdcd1d64961b744f86f6dc1b57fc052a72b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf6ea08a80ed88766ed9b46e49de37612d8df3bba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf9b52e58f6249940faf9d20c9d3aa37a197df717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfb1bc9c43d74b04a1648e668b262c748cbb7d787` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfd0421d7ea5fea7e28e34eb67e5f358a0a944d82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfd30e27e5a71603a5ef60dcb21924b105ddef347` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-386576 | `0xfd739d4e423301ce9385c1fb8850539d657c296d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xfdfd4ff35a4c05fe54d181d23e665c3fe3456d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xffaa4a3d97fe9107cef8a3f48c069f577ff76cc1` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 171
- Live contracts: 0
- Unknown liveness contracts: 171
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=171

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x1aae0d2aa45ce2e934f4032b18c8dd2113c7b854` | non_address_book | unknown | unknown | unverified | n/a | `0x20e97805af96ec2adeb7b2f0cea61b1414d5328c` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x210b520e9650c314633a49fedb373b68572c5ca0` | non_address_book | unknown | unknown | unverified | n/a | `0x20e97805af96ec2adeb7b2f0cea61b1414d5328c` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb96f07367e69e86d6e9c3f29215885104813eeae` | non_address_book | unknown | unknown | unverified | n/a | `0x20e97805af96ec2adeb7b2f0cea61b1414d5328c` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd555ccdacac284f8ca02f8f7027d4cd09ff878a4` | non_address_book | unknown | unknown | unverified | n/a | `0x20e97805af96ec2adeb7b2f0cea61b1414d5328c` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd770c65f4505232eaf7c3cad6d6347ce210eb060` | non_address_book | unknown | unknown | unverified | n/a | `0x20e97805af96ec2adeb7b2f0cea61b1414d5328c` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xdd88b1c4f32013687420d17ef1988d8ab8991fdc` | non_address_book | unknown | unknown | unverified | n/a | `0x20e97805af96ec2adeb7b2f0cea61b1414d5328c` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xffaa4a3d97fe9107cef8a3f48c069f577ff76cc1` | non_address_book | unknown | unknown | unverified | n/a | `0x20e97805af96ec2adeb7b2f0cea61b1414d5328c` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x03322a6c93bb3ccfddd90679df054baaa7ec7956` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x088a72a690109ed2dc7404f10525f7774cf6d614` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x097321aec5c6cfd19a71e1ab7000372bb230c135` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x09e6072bd4b73002a0d7a71910b47e5fbbc9f8c8` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x0a4aed993c9671a08797fc2f466b17226be17683` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x0b89eb82a09e9c6a00e5ae1879a4de66decfa52e` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x0cc11d07c37ab2bf12b039651b641915b42e1373` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x12690a56d6764c31fada397567d4611677e61a57` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x13c60e4cc2cc8602a5f253113ef56bce60793030` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x17adbfdffb706df0b333375225f52acf9569da49` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x186744e139f2dcd6b9584d107bf1aa908a0f5bca` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x1c70dab81c8ac04172dca7220ec8ce4bfc9da197` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x1f3b78a95b126d63857f143c44f155ce90678098` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x2277b1f18f5e56d4c8f3a96b52cc4cb3e36b1fa0` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x243f601bd29398e03a471369aab91cd214ea910a` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x25a6cbe70d97099882193d0df69d6f2de7475033` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x2796fafba960b9b6e5f1a0f729eb29486a5aaf93` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x2813cb2294d8fa0e9ede8c467001c0f52c0e074d` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x281d399566d08524cf012687905a9a2995e30a47` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x28c7fe8418b1473b4d28733522621ff231a32201` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x2aa1fc569a870fc04e0b15db1bed5219571c1fba` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x2df68c4305ceb677bec738a8396e121b8b1addea` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x2fdeda71887eb2bbe7a9beda413235563ef3f8c1` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x31a2b266a3b484420dc80842819d2c82e96aa7b2` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x33daea58563777dda89ac469e0072e0ad269caa0` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x343966ab7cda4c775aeeabd6a39072ec60352125` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x35366a5859e1fcf7d9ba264554a3b0850162e020` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x372a7f2daa26535ec24953f82980bdc03febcae1` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x378703b5bc806f1e9ee4a2fdf50d01bdb96fb8b0` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x39750fa0944f7dfb67a3cad1b7bbe8a8acc75503` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x3c0feeeaf4d82587b9421b25a6213949ca36f681` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x3da883c7b3b3f838d02a3cb25b3f987e5bb1332e` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x3e46a36debc92d845af452a6d5b3395acd21144e` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x3ed69b995ed45de67446faca3d21c6cd6d53cf9b` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x408c905ac9159dfd9c69c1968f43ce0e5f266139` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x420bb9667b304b0a093a2b6687a92e40baa3cba3` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x42a105f3249a75ea74277b52a9ee79224fb9203d` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x42f1a9f123ba2d4265892b5972472185317b4239` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x43cccf67e57d4b7c31ed679b5d3db6dd3966594f` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x44415dbd00a9a0851146a7ad9ff7e380b759c6f2` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x444322c3c54908fa5a7842a4f3ff085ec67f2598` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x4469b689ece024572ff1b4698c33f4704457a97e` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x44a600c031dbdf652500f4a6d84b168056f13692` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x45354b1e615fc2b8e2aa668f56ec9644374ab7df` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x4536974b44cdef9a5e036f24c65385dacc47512d` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x46a08c702cf2bb8830b13c4a20c137f0624cc224` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x46bb738e0fcccf5b408b1f2c0509c42d33095a10` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x46e223d4fe80dd89bcbb54d8c9aadb48f0419315` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x473c5e001615e64a24d6c961ba1ab2642e797f2e` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x4955b4d7007ef53c9841ffbdd087847bc903c2f2` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x4b180800f6322adb1130271a3f55416165936700` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x4c168ca32001e0e3c4de58bbb0a10533f9510982` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x4cfb72ddea9b2c6cff4a02a162e7b3c57446a6b3` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x4f032460d3e14c461ffb26fcb9be0c5b5e3f41f8` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x525cd75b841171bc8b7cdc885bc972319bd6166a` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x568d1c475cd6937b401124423bb3d7c6a3ecce74` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x58632800d27714c49efab222c6cae03ea966f2b1` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x58e9742b328a265fc0f1aef0ea1c5f4a9a6242b0` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x5b7749010edbceba3feb611275df3797375d9e6d` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x5e2b78aad62bf73d1096e03eb7f3e1fb6fea28a9` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x5ea44b91d102ad8b617154616668d0593fbb01fa` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x5fcae242962f54bb4063a7f2957111200d3b7475` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x648f01686d59b509a1ca54dc6f3e32ad9bde5bb7` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x656d2c7a970d13073a6a58fae18f39abf31fae41` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x67807fba73f8bbb55e050108ba33aec9e58e02ec` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x67cdae04e533b1b15907d93783e955d789ddc71c` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x687ab202ca714d4bece9dbd438466b4cd8a6a696` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x6a4b9166882ecd01946fdb21626190ac42772f11` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x6ace545200c5cebfc456f210b08e342f5dc6f480` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x6c09ce2c19699ece1ea19f10557fa28b5cf783b7` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x6d154b2eccaf6c9d2ae0d07897d4cf522ecb2e93` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x6df0a52f0b8d90db86ee7e86562d09a2d6f64145` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x708809ac6ac45ba95532c961fd46228fa6dd761e` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x71347b3e13c2ba423bbb423339a45b530c86d239` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x72b7c2001f19a304b414d6037294ef45bde30807` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x72c97ee78af0b5df8222fe56dd7a6bf5058405c8` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x75d519d1323d97b75a074b686c40416bd845cbaf` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x797098ee74c052a6e1122e7fad90d5dfdb1182f1` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x79a85dbcd70ca95e196733efe79c0fe5ffc299e3` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x79c91a98a26f6f729bc43fc5c09a382e86b965cd` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x79d4577f634891023a210bab27457e46bb098740` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x7dd3accfb2c2b40319f285763a996d8e0577161a` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x82848d8fa8f41f5306ba2a5c3027e18e3a683d2f` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x83e10abcdd67a0604ef319851255fb0fa5b34d24` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x859bfb81f46edba5634757b66132786743f62eb1` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x87b1706f234071a751ed28908d90b7451155ddf0` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x881bc334801cbcb6fdb49a356e113a38771f0211` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x88251b943f7b46290cac5eebc3e65c6479ad51ae` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x8b8ff7830dedef5c639b593425b012f0ce92c3d9` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x8d723e5cacc11745a374ac170dafa895448c947d` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x8f7f4483647647c58939b1563c1fc6287ae36716` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x8fa3d8b1a532cd3d626da2f96876e905bf647407` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x8fd90c7f4b74a4f45239390be732905bfd82ae3d` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x91f5acd082b7274fb2adf8fe99607cc185aa1a01` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x92773eac2b2649a003269e00ad6f91c9e4773ba3` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x999d70869b2d43ecccb790576a47d2fc848e3a69` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x9b4d34d452f26e07fb5d80da2b98ce539d62c220` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x9b59020b12c247babcfe2893a0c19bfa4a2dfbe5` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x9f2c2cf7ec8c03e8cf3c2398b5b138b5983ea9dc` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xa13965eda29c632193c8660f734f4a75ca6cf1d5` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xa378ec0cfedd75e3a235ddd3925818677a85e2db` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xa3d951d348e722aeac0af91061fd760a79792110` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xa4c9c887a5d8dea0fecdebac22a4ffef7f13fdc2` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xa8168e6a0bafda3b26bd416111e29a88ae67cee8` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xac55600f0d24b1a1cc3d2d6878cc96634e148cc6` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xacd26233a4f1c7cc0f5175e64f44c8fa7d89601d` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb109a8c9988e9296c29120807d7da17ac05261ea` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb30a659c907be4cd55a5a2652cb3c797b3edbc2f` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb5b7a785bb0645835c93640bb6631daedf42ae1a` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb6a5c934b3b1a9b43f8afb123e55577ab389732a` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb825b75ebb1324f5cc171fce07b4c06b1b57ad36` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb862f53501fa52f06937b56e0d8dc97e7b6f2458` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb9be1aed5ba289510cdfef80700d22d4f25459a8` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb9cc2693c763a745fdcbc7a94d58bbd4a889e8a6` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xb9fe768e819979cb32481b9451c337f967b78a60` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xbba156d79950670c5bc9f0d366effb016705ee50` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xbd647dbccae38a49149c4f3152b26d2a6ba1ee6e` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xbfcf769c44976b64dc8bb31c25104b6ee62724c2` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xc1e63be54dc6f977318452db03fa2ed34a4c0bf1` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xc43057a5fe16594961928cce9f217b2dcb5a7743` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xc7065e637e49e2ae5540889bc3c116da6ef88645` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xc8d13dc9edc47e3559bdcf93bb04dda9142bbe7c` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xccba78e1e8a88f6c4c45badede69af3bde3c19be` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xcdab976f598af1f9cc4d3b77c017f959229879c1` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xcea049cdd03a94ba7105fd3deb8391092474ec61` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xcf12bb6b4c6ffd8da245dada215aa14e6f3ff7b5` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd06dfc33388d2c71a50eadd2a312b0dca9e17672` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd21ddb20370c1c2abc9d729615317b1ba0a142d7` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd2fe30df10e6c130fa23da2db6c68b48c8584c4b` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd49d896669b1ae2542795e28d05c4d9cd6edad62` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd5ed360da3681d9c117e76f4e8aff8678db0f0d1` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xdf1293b46d3d8f6c090ab98094805db68922ce30` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xdf20073d9e58224305d748c9ff80cc54e1cc7627` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xe06ed7bcfe20c273c1e7806bdc3a423919e22989` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xe2880920dd79bd2d8f8d0f3b0c596d707609a06d` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xe32a643d830ba1d9e61497b7906dc184ea202e55` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xe36de6875f1e372e34ccd8b5e22f343a9286c0a4` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xe658927672967c0e3cc50019c288ff4013fb89af` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xe9866b25c2316a5c277e0137cb5229398ef8f803` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xec13effc9e631a4e83f3fa8f6ac2a1c8b08a9a34` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xed5ef2986c60fd2ccbbde17953ae3aa4dc2eca3f` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xee88c18dcc68667060b3988358c35e7c47145bee` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xef5d2b08e76beb742c41aef80324509a5ff2a808` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xef8407565b0924ebfcb0fb02c2318ca6d91f780c` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xf06a048d6eb040912f1babcee251914c5ef40bda` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xf42fdd953e68d0010f5fa9d61ef1ba0fc997ef2f` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xf4617fdcd1d64961b744f86f6dc1b57fc052a72b` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xf6ea08a80ed88766ed9b46e49de37612d8df3bba` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xf9b52e58f6249940faf9d20c9d3aa37a197df717` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xfb1bc9c43d74b04a1648e668b262c748cbb7d787` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xfd0421d7ea5fea7e28e34eb67e5f358a0a944d82` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xfd30e27e5a71603a5ef60dcb21924b105ddef347` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xfdfd4ff35a4c05fe54d181d23e665c3fe3456d0d` | non_address_book | unknown | unknown | unverified | n/a | `0x782c4a946c94137237c3dd19e7d390c50ef7afef` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x068f321fa8fb9f0d135f290ef6a3e2813e1c8a29` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x11e10b315363d43e46b04f139fc051164e0798a1` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x1a7689c3b783eb37550efbb9c81e7f468f7034fc` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x27ec642013bcb3d80ca3706599d3cda04f6f4452` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x33af3c2540ba72054e044efe504867b39ae421f5` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0x3b4575e689ded21caad31d64c4df1f10f3b2cedf` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xab73c0ab9e4b931769373bd0c6480c022119d74c` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xbe6727b535545c67d5caa73dea54865b92cf7907` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xd9d236f9fa38e5ae0c33170a23f09ed50c3e0617` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xe60dd45eba5655e31ca1e61bead4f983b3c4a83b` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |
| hyperliquid | unverified unclassified | UnnamedContract<br>`0xeee571012c07032907b952714c48c81f8999e96a` | non_address_book | unknown | unknown | unverified | n/a | `0xb4fc973924a91362d301e583e839cdaf4f19cdf8` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Smart Contract Audits](https://usefelix.gitbook.io/docs/advanced/smart-contract-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Certora - Formal Verification](https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf) | Certora | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Recon - Liquity Security Review](https://github.com/GalloDaSballo/bold-review) | Recon | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | medium |
| [Felix Audit by Dedaub.pdf](https://2357968670-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FVH6och7EAxl0pIZxgbqv%2Fuploads%2FckGCSwgMVirpVuz2oDep%2FFelix%20Audit%20by%20Dedaub.pdf) | Dedaub | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17208] Smart Contract Audits — no match: The document is an index page listing multiple audit reports for Liquity V2 and Felix, but does not contain a specific audit report with a scope section listing contracts. No contract names are explicitly mentioned as being in scope for a particular audit.
- [17213] Certora - Formal Verification — no match: Scope explicitly lists three contracts: BorrowerOperations.sol, TroveManager.sol, ActivePool.sol. Audit date inferred from 'December 2024' in header.
- [17220] Recon - Liquity Security Review — no match: The document is a GitHub README with findings, not a formal audit report. No explicit scope section or date found. Contract names extracted from code snippets and file paths referenced in findings.
- [17221] Felix Audit by Dedaub.pdf — no match: Extracted contract names from the scope listing in the audit report. The report lists all files under src/ directory. Also extracted audit date from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Certora - Formal Verification | BorrowerOperations | unmatched — not counted | — | listed in scope | no |
| Certora - Formal Verification | TroveManager | unmatched — not counted | — | listed in scope | no |
| Certora - Formal Verification | ActivePool | unmatched — not counted | — | listed in scope | no |
| Recon - Liquity Security Review | TroveManager | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | BorrowerOperations | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | ActivePool | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | StabilityPool | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | DefaultPool | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | CollateralRegistry | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | SortedTroves | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | TroveNFT | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | AddRemoveManagers | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | CompositePriceFeed | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | RETHPriceFeed | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | WSTETHPriceFeed | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | MainnetPriceFeedBase | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | LeverageWETHZapper | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | WETHZapper | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | GasCompZapper | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | CurveExchange | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | AddressesRegistry | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | Constants | unmatched — not counted | — | mentioned in findings | no |
| Felix Audit by Dedaub.pdf | ActivePool | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | AddressesRegistry | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | AdminController | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | BorrowerOperations | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | CollateralRegistry | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | CollSurplusPool | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | DefaultPool | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | AddRemoveManagers | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | LiquityBase | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | FelixToken | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | GasPool | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | HintHelpers | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | BorrowerOperationsInit | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | LiquityBaseInit | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | TroveManagerInit | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | MultiTroveGetter | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | HLPriceFeed | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | SortedTroves | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | DeployFelixMainnet | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | StabilityPool | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | TroveManager | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | TroveNFT | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | BaseZapper | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | GasCompZapper | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | LeftoversSweep | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | LeverageLSTZapper | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | LeverageWETHZapper | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | WETHZapper | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 236 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 51 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [17208] Smart Contract Audits
- [17213] Certora - Formal Verification
- [17220] Recon - Liquity Security Review
- [17221] Felix Audit by Dedaub.pdf

Fork inheritance lineage and inherited audits are included when available.
