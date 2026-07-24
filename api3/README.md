# Agentic Audit Brief: Api3

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `badfb69ca75b1f24c1a11ab95b6fafb44eb35f63eed2bc554b58d06f531dd5bd`

## Project Overview

- Project: Api3 (`api3`)
- Website: [https://api3.org/](https://api3.org/)
- Lifecycle: active (Tier 0, 16.4% below peak)
- Generated: 2026-07-24T07:45:00.000Z
- Pipeline run: brief-priority-deployer-expansion-20260724-v1
- Chains: apechain, apechain-curtis, arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, bob, bsc, bsc-testnet, chain-10200, chain-1114, chain-1439, chain-1946, chain-202601, chain-2221, chain-3441006, chain-4, chain-46630, chain-48898, chain-50312, chain-534351, chain-808813, chain-919, chain-998, core, ethereum, fraxtal, gnosis, hoodi, hyperliquid, injective-evm, katana, katana-bokuto, kava, linea, manta-pacific, mantle, mantle-sepolia, mode, moonbase-alpha, moonbeam, optimism, optimism-sepolia, polygon, polygon-amoy, robinhood, ronin, scroll, sei, sei-testnet, sepolia, somnia, soneium, sonic, sonic-testnet, taiko, taiko-hoodi, unichain, unichain-sepolia, world, world-sepolia, zircuit
- Contract surface: 568 unique implementations (570 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $43,286,735.41
- On-chain TVL (included contracts): $50,989,882.02
- TVL by chain: Ethereum $50,989,882.02

## Project Description

This brief describes the observed EVM deployment and audit surface for Api3. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across apechain, apechain-curtis, arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, bob, bsc, bsc-testnet, chain-10200, chain-1114, chain-1439, chain-1946, chain-202601, chain-2221, chain-3441006, chain-4, chain-46630, chain-48898, chain-50312, chain-534351, chain-808813, chain-919, chain-998, core, ethereum, fraxtal, gnosis, hoodi, hyperliquid, injective-evm, katana, katana-bokuto, kava, linea, manta-pacific, mantle, mantle-sepolia, mode, moonbase-alpha, moonbeam, optimism, optimism-sepolia, polygon, polygon-amoy, robinhood, ronin, scroll, sei, sei-testnet, sepolia, somnia, soneium, sonic, sonic-testnet, taiko, taiko-hoodi, unichain, unichain-sepolia, world, world-sepolia, zircuit. Structural roles: 4 core, 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (4), supporting (1), unclassified (1)
- Contract kinds: contract (6)
- Detected standards: ownable (2), erc20 (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 269 contracts are derived from known codebases. 269 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1c8058e72e4902b3431ef057e8d9a58a73f26372`, chain 1)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 1)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 1)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 1)
- UnnamedContract (`0x32d228b5d44fd18fefbfd68bfe5a5f3f75c873ae`, chain 1)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 1)
- UnnamedContract (`0x556ecbb0311d350491ba0ec7e019c354d7723ce0`, chain 1)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 1)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 1)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 1)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 1)
- UnnamedContract (`0xd9f80bdb37e6bad114d747e60ce6d2aaf26704ae`, chain 1)
- UnnamedContract (`0xdb6c812e439ce5c740570578681ea7aadba5170b`, chain 1)
- UnnamedContract (`0xe7af7c5982e073ac6525a34821fe1b3e8e432099`, chain 1)
- UnnamedContract (`0xf26304d6cd67dfa199b17c9e850149bf77285611`, chain 1)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 10)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 10)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 10)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 10)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 10)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 10)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 10)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 10)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 56)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 56)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 56)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 56)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 56)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 56)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 56)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 56)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 100)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 100)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 100)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 100)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 100)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 100)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 100)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 100)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 130)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 130)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 130)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 130)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 130)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 130)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 130)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 130)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 137)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 137)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 137)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 137)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 137)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 137)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 137)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 137)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 146)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 146)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 146)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 146)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 146)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 146)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 146)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 146)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 169)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 169)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 169)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 169)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 169)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 169)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 169)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 169)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 252)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 252)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 252)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 252)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 252)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 252)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 252)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 252)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 480)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 480)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 480)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 480)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 480)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 480)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 480)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 480)
- UnnamedContract (`0x0b902411ada874d94d36f51a4ddca81909bd7233`, chain 999)
- UnnamedContract (`0x132c10b18874eef45ef1e00db9ce266150162d93`, chain 999)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 999)
- UnnamedContract (`0x3625d7b7092d072d6a173fc17f00c1084bab2122`, chain 999)
- UnnamedContract (`0x3e60892ea588348c98ba6e087a1055a24fe53cff`, chain 999)
- UnnamedContract (`0x48c2c4e35a487b5d85c2aef394d34ad4959fa257`, chain 999)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 999)
- UnnamedContract (`0xced8153adf62f31d940f230397b30622298a445d`, chain 999)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 1116)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 1116)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 1116)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 1116)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 1116)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 1116)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 1116)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 1116)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 1284)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 1284)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 1284)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 1284)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 1284)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 1284)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 1284)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 1284)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 1329)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 1329)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 1329)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 1329)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 1329)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 1329)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 1329)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 1329)
- UnnamedContract (`0x0b902411ada874d94d36f51a4ddca81909bd7233`, chain 1776)
- UnnamedContract (`0x132c10b18874eef45ef1e00db9ce266150162d93`, chain 1776)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 1776)
- UnnamedContract (`0x3625d7b7092d072d6a173fc17f00c1084bab2122`, chain 1776)
- UnnamedContract (`0x3e60892ea588348c98ba6e087a1055a24fe53cff`, chain 1776)
- UnnamedContract (`0x48c2c4e35a487b5d85c2aef394d34ad4959fa257`, chain 1776)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 1776)
- UnnamedContract (`0xced8153adf62f31d940f230397b30622298a445d`, chain 1776)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 1868)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 1868)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 1868)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 1868)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 1868)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 1868)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 1868)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 1868)
- UnnamedContract (`0x14a9e40fcada95a273ce3c8d4ccf7ea3280bdd26`, chain 2020)
- UnnamedContract (`0x1dce40dc2afa7131c4838c8bff635ae9d198d1ce`, chain 2020)
- UnnamedContract (`0x25c6f371cf8d4200b89df84f9de69d011013b086`, chain 2020)
- UnnamedContract (`0x2ab9f26e18b64848cd349582ca3b55c2d06f507d`, chain 2020)
- UnnamedContract (`0x2b4401e59780e44d3b1fd2d41fcb3047c830f286`, chain 2020)
- UnnamedContract (`0x55cf1079a115029a879ec3a11ba5d453272eb61d`, chain 2020)
- UnnamedContract (`0x55d72f0eb10e85d390b20da57aa3122312647c0d`, chain 2020)
- UnnamedContract (`0x5ab00e30453eead35025a761ed65d51d74574c24`, chain 2020)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 2222)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 2222)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 2222)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 2222)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 2222)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 2222)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 2222)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 2222)
- UnnamedContract (`0x0f52ee9c03cb939f25286d05a846208642f45a32`, chain 4663)
- UnnamedContract (`0x1b3f9f2522c871d5b4acfafbe94cde8d7b026bc9`, chain 4663)
- UnnamedContract (`0x7d0c40f6b4d49cfb616b051f314b88546c38bee1`, chain 4663)
- UnnamedContract (`0xbac8d514d284df81fc21de80925d2e0721bf06b5`, chain 4663)
- UnnamedContract (`0xbd553312fa8e6fe36e0f2df02380f623672f6e88`, chain 4663)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 4663)
- UnnamedContract (`0xea5f320ee0ef7e81afaf2a9b4fbc1a7d093287fe`, chain 4663)
- UnnamedContract (`0xefc5883a9d09fd06a0d5f8612e5ff18dd10cb227`, chain 4663)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 5000)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 5000)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 5000)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 5000)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 5000)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 5000)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 5000)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 5000)
- UnnamedContract (`0x0b902411ada874d94d36f51a4ddca81909bd7233`, chain 5031)
- UnnamedContract (`0x132c10b18874eef45ef1e00db9ce266150162d93`, chain 5031)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 5031)
- UnnamedContract (`0x3625d7b7092d072d6a173fc17f00c1084bab2122`, chain 5031)
- UnnamedContract (`0x3e60892ea588348c98ba6e087a1055a24fe53cff`, chain 5031)
- UnnamedContract (`0x48c2c4e35a487b5d85c2aef394d34ad4959fa257`, chain 5031)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 5031)
- UnnamedContract (`0xced8153adf62f31d940f230397b30622298a445d`, chain 5031)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 8453)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 8453)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 8453)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 8453)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 8453)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 8453)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 8453)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 8453)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 33139)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 33139)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 33139)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 33139)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 33139)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 33139)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 33139)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 33139)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 34443)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 34443)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 34443)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 34443)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 34443)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 34443)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 34443)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 34443)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 42161)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 42161)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 42161)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 42161)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 42161)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 42161)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 42161)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 42161)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 43114)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 43114)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 43114)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 43114)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 43114)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 43114)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 43114)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 43114)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 48900)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 48900)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 48900)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 48900)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 48900)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 48900)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 48900)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 48900)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 59144)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 59144)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 59144)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 59144)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 59144)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 59144)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 59144)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 59144)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 60808)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 60808)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 60808)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 60808)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 60808)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 60808)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 60808)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 60808)
- UnnamedContract (`0x0ca813f8757197a2a0b0b13871953800ed884082`, chain 167000)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 167000)
- UnnamedContract (`0x2ab9f26e18b64848cd349582ca3b55c2d06f507d`, chain 167000)
- UnnamedContract (`0x4dea3120cde98cc1535977a569bc109cb9ea7afe`, chain 167000)
- UnnamedContract (`0x55cf1079a115029a879ec3a11ba5d453272eb61d`, chain 167000)
- UnnamedContract (`0xb331c8826d1ff3987affe318dff3eac900914fdc`, chain 167000)
- UnnamedContract (`0xca69e397ccb2e93fc5bd2e260f0e0a7bd325e4d9`, chain 167000)
- UnnamedContract (`0xf6d2675468989387e96127546e0cbc9a384fa418`, chain 167000)
- UnnamedContract (`0x1fe170311cb13e3bfb96dec8faadcf97bf843381`, chain 534352)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 534352)
- UnnamedContract (`0x2e787629c3b7545271240a87197108823ce8303b`, chain 534352)
- UnnamedContract (`0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811`, chain 534352)
- UnnamedContract (`0x709944a48caf83535e43471680fda4905fb3920a`, chain 534352)
- UnnamedContract (`0x7b42df2563e128ae3f68e2cfb1904808f61c8f12`, chain 534352)
- UnnamedContract (`0x81bc85f329cdb28936fbb239f734ae495121f9a6`, chain 534352)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 534352)
- UnnamedContract (`0x0b902411ada874d94d36f51a4ddca81909bd7233`, chain 747474)
- UnnamedContract (`0x132c10b18874eef45ef1e00db9ce266150162d93`, chain 747474)
- UnnamedContract (`0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8`, chain 747474)
- UnnamedContract (`0x3625d7b7092d072d6a173fc17f00c1084bab2122`, chain 747474)
- UnnamedContract (`0x3e60892ea588348c98ba6e087a1055a24fe53cff`, chain 747474)
- UnnamedContract (`0x48c2c4e35a487b5d85c2aef394d34ad4959fa257`, chain 747474)
- UnnamedContract (`0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730`, chain 747474)
- UnnamedContract (`0xced8153adf62f31d940f230397b30622298a445d`, chain 747474)
- Api3Pool (`0x6dd655f10d4b9e242ae186d9050b68f725c76d76`, chain 1)
- Api3Token (`0x0b38210ea11411557c13457d4da7dc6ea731b88a`, chain 1)
- AppProxyUpgradeable (`0x1e7ecc6d3b5b4cfdfc71cb7c3ea9ac4a55f4195a`, chain 1)
- Convenience (`0x95087266018b9637aff3d76d4e0cad7e52c19636`, chain 1)
- KernelProxy (`0x593ea926ee9820a933488b6a288433c387d06dba`, chain 1)
- TimelockManager (`0xfaef86994a37f1c8b2a5c73648f07dd4eff02baa`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 269/525 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 269 own, 257 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 42 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 269 of 568 unique; 299 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/25
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 543
- Unique implementations: 568
- Raw deployments: 570
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $36,878,429.11
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 5 stale, 0 unknown
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
| Api3Token | token | project_anchor | own_supporting | 0 | ethereum | unit-380818 | `0x0b38210ea11411557c13457d4da7dc6ea731b88a` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x36cfe1568461e499391ef0a555300f1ae2da2439`; ethereum `0x54210d3f1a066413891af9e17210e787d5c6e3f4` | ⚠️ Unaudited |
| VaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe2221aa07ec3266da87763e2b1e28d07a8a4e53b` | ⚠️ Unaudited |
| AccessControlRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92e5125adf385d86bedb950793526106143b6df1` | ⚠️ Unaudited |
| ACL | governance | project_anchor | own_supporting | 1 | ethereum | unit-381363 | `0x1e7ecc6d3b5b4cfdfc71cb7c3ea9ac4a55f4195a` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870ac11d48b15db9a138cf899d20f13f79ba00bc` | ⚠️ Unaudited |
| AirnodeRrpV0DryRun | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e768206bf5112e7d7efaf1d9df614c26475193f` | ⚠️ Unaudited |
| Api3CirculatingSupply | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5af02b1071614f962a7a6ae02503fe3f453a3fa7`; ethereum `0xcd34bc5b03c954268d27c9bc165a623c318bd0a8` | ⚠️ Unaudited |
| Api3Pool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-380826 | `0x6dd655f10d4b9e242ae186d9050b68f725c76d76` | ⚠️ Unaudited |
| Api3ReaderProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5b0cf2b36a65a6bb085d501b971e4c102b9cd473` | ⚠️ Unaudited |
| Api3ReaderProxyV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x776e79d916e49bbdb8fee0f43ff148c2ed3be125` | ⚠️ Unaudited |
| Api3Voting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc215c66b455e9f7854e7870631f2a01878b0521a` | ⚠️ Unaudited |
| Convenience | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380830 | `0x95087266018b9637aff3d76d4e0cad7e52c19636` | ⚠️ Unaudited |
| Kernel | unknown | project_anchor | own_supporting | 1 | ethereum | unit-381362 | `0x593ea926ee9820a933488b6a288433c387d06dba` | ⚠️ Unaudited |
| LockedApi3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84b11c31469706b50e57b398c63d7d13187608f` | ⚠️ Unaudited |
| Morpho | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a7bb36ee3f3ee32a60e9f2b33c1e5f2e83ad766` | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1` | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394` | ⚠️ Unaudited |
| RegistryList | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e` | ⚠️ Unaudited |
| RequesterAuthorizerWithAirnode | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18c105d0375e80980e4eed829a4a68a539e6178` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x5a9aa3219dd1cbef6a18fd221464e071df2677c2` | ⚠️ Unaudited |
| TimelockManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41ab01244c3f466294dbc36916a8b62d56ba1f03` | ⚠️ Unaudited |
| TimelockManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380836 | `0xfaef86994a37f1c8b2a5c73648f07dd4eff02baa` | ⚠️ Unaudited |
| VaultV2Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d94f746defa1928926b84fb2596c06926c0405` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (543)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15667178b830e3c48b663366a9acdeef79c9da27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18c7ce350481e0659d78d6e1dfeeae7273de2994` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380819 | `0x1c8058e72e4902b3431ef057e8d9a58a73f26372` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380820 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380821 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380822 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380823 | `0x32d228b5d44fd18fefbfd68bfe5a5f3f75c873ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380824 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380825 | `0x556ecbb0311d350491ba0ec7e019c354d7723ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c9e3cab8f741c2d17d6948782c94a3ec505bb15` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380827 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7603fa1bd3c40fc23a70c09003a9cfa598eb999d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380828 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf9041f0bc54239b9389defdaf100224c87b416` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380829 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83ae726dfa03f2511e1406ba11c01afbbb464cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9440182d1c2428d49d4043d15cbf1a68524fd6e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f0566f2e8ff51901dd0c0e7aad937a94931f75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0d48b8fa999ca8d6967e8b6b6a4dbe0f82996b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa20f2a3acc8b8efaa2c19c51dffabe6a2f66dca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa68e1b37a9a792b0b415a4165db9bcaaf83fbe6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad738db073c76b0738c69cb796036584283bf5de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba26aa945850c88adbd810070c840cb26e85625a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1dba98fe6befcbd9398c36a5cf286ab534cdacd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380831 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd404f87c895871f133fc6d76e4c7a7593a5f5816` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380832 | `0xd9f80bdb37e6bad114d747e60ce6d2aaf26704ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380833 | `0xdb6c812e439ce5c740570578681ea7aadba5170b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380834 | `0xe7af7c5982e073ac6525a34821fe1b3e8e432099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef2abc065ff0f34233c9c795ff1800eb7e9a4af9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380835 | `0xf26304d6cd67dfa199b17c9e850149bf77285611` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | n/a | `0x0000000000000000000000000000000000000001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381093 | `0x269e1baceb37d22aaddddd3ed83e54ae6e8c2672` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381094 | `0x2c5c6557d4b9874411adf1c126cb3bae7242c1c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381095 | `0x36d09b485fe0c3a24e92fa24cfdc0e8ebf981ef9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381096 | `0x43e78f2911c3a8db79cf03269b691f27a2551e2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381097 | `0x51e9737734b7ae1456ce174f046fb784c3a8d8b1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381098 | `0xd3e7bc3f88a39af6cb19394ccc4c0705f2c6f0c2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381099 | `0xef6115b6e8461e70d26869641a228d004c67a782` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-4 | unit-381100 | `0xf10952f418da8da5ece292b1b82a20479633f173` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380837 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380838 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380839 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380840 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380841 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380842 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380843 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-380844 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381250 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381251 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381252 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381253 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381254 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381255 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381256 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-381257 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381338 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381339 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381340 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381341 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381342 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381343 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381344 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc-testnet | unit-381345 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380845 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380846 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380847 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380848 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380849 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380850 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380851 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-380852 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380909 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380910 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380911 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380912 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380913 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380914 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380915 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-380916 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380941 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380942 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380943 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380944 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380945 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380946 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380947 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-380948 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380957 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380958 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380959 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380960 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380961 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380962 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380963 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-380964 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380989 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380990 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380991 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380992 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380993 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380994 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380995 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | manta-pacific | unit-380996 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381053 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381054 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381055 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381056 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381057 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381058 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381059 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-381060 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381149 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381150 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381151 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381152 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381153 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381154 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381155 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | world | unit-381156 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381330 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381331 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381332 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381333 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381334 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381335 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381336 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-919 | unit-381337 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381346 | `0x4b69e2bc4a2835a07104106dfd18d03548ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381347 | `0x6ba5ac44eebdb45d9e92be870558b2517194de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381348 | `0x73e5e41f981365cd92180b040e8532693d84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381349 | `0x75f5d5f22eb175b50b3c305d4dd0cafec4390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381350 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381351 | `0x7adbf5b35db3c150f1f7d4adf3c489a6916418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381352 | `0xa4c9a00ac42c3f8c81421eb7ad44ba076e70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-998 | unit-381353 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381354 | `0x0b902411ada874d94d36f51a4ddca81909bd7233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381355 | `0x132c10b18874eef45ef1e00db9ce266150162d93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381356 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381357 | `0x3625d7b7092d072d6a173fc17f00c1084bab2122` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381358 | `0x3e60892ea588348c98ba6e087a1055a24fe53cff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381359 | `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381360 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-381361 | `0xced8153adf62f31d940f230397b30622298a445d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380861 | `0x4b69e2bc4a2835a07104106dfd18d03548ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380862 | `0x6ba5ac44eebdb45d9e92be870558b2517194de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380863 | `0x73e5e41f981365cd92180b040e8532693d84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380864 | `0x75f5d5f22eb175b50b3c305d4dd0cafec4390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380865 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380866 | `0x7adbf5b35db3c150f1f7d4adf3c489a6916418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380867 | `0xa4c9a00ac42c3f8c81421eb7ad44ba076e70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1114 | unit-380868 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380885 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380886 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380887 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380888 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380889 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380890 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380891 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | core | unit-380892 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380893 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380894 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380895 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380896 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380897 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380898 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380899 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | moonbeam | unit-380900 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380901 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380902 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380903 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380904 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380905 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380906 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380907 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | moonbase-alpha | unit-380908 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380917 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380918 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380919 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380920 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380921 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380922 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380923 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | unichain-sepolia | unit-380924 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380925 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380926 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380927 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380928 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380929 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380930 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380931 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sei-testnet | unit-380932 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380933 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380934 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380935 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380936 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380937 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380938 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380939 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-380940 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380949 | `0x4b69e2bc4a2835a07104106dfd18d03548ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380950 | `0x6ba5ac44eebdb45d9e92be870558b2517194de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380951 | `0x73e5e41f981365cd92180b040e8532693d84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380952 | `0x75f5d5f22eb175b50b3c305d4dd0cafec4390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380953 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380954 | `0x7adbf5b35db3c150f1f7d4adf3c489a6916418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380955 | `0xa4c9a00ac42c3f8c81421eb7ad44ba076e70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1439 | unit-380956 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-380997 | `0x0b902411ada874d94d36f51a4ddca81909bd7233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-380998 | `0x132c10b18874eef45ef1e00db9ce266150162d93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-380999 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-381000 | `0x3625d7b7092d072d6a173fc17f00c1084bab2122` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-381001 | `0x3e60892ea588348c98ba6e087a1055a24fe53cff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-381002 | `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-381003 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | injective-evm | unit-381004 | `0xced8153adf62f31d940f230397b30622298a445d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381005 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381006 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381007 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381008 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381009 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381010 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381011 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | soneium | unit-381012 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381013 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381014 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381015 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381016 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381017 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381018 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381019 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-1946 | unit-381020 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381021 | `0x14a9e40fcada95a273ce3c8d4ccf7ea3280bdd26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381022 | `0x1dce40dc2afa7131c4838c8bff635ae9d198d1ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381023 | `0x25c6f371cf8d4200b89df84f9de69d011013b086` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381024 | `0x2ab9f26e18b64848cd349582ca3b55c2d06f507d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381025 | `0x2b4401e59780e44d3b1fd2d41fcb3047c830f286` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381026 | `0x55cf1079a115029a879ec3a11ba5d453272eb61d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381027 | `0x55d72f0eb10e85d390b20da57aa3122312647c0d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ronin | unit-381028 | `0x5ab00e30453eead35025a761ed65d51d74574c24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381037 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381038 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381039 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381040 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381041 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381042 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381043 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-2221 | unit-381044 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381045 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381046 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381047 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381048 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381049 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381050 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381051 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-381052 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381133 | `0x0f52ee9c03cb939f25286d05a846208642f45a32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381134 | `0x1b3f9f2522c871d5b4acfafbe94cde8d7b026bc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381135 | `0x7d0c40f6b4d49cfb616b051f314b88546c38bee1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381136 | `0xbac8d514d284df81fc21de80925d2e0721bf06b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381137 | `0xbd553312fa8e6fe36e0f2df02380f623672f6e88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381138 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381139 | `0xea5f320ee0ef7e81afaf2a9b4fbc1a7d093287fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | robinhood | unit-381140 | `0xefc5883a9d09fd06a0d5f8612e5ff18dd10cb227` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381157 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381158 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381159 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381160 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381161 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381162 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381163 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | world-sepolia | unit-381164 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381181 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381182 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381183 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381184 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381185 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381186 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381187 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-381188 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381189 | `0x0e9f462117edde5feffc674e556b5464013881dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381190 | `0x17c721d8ddd3e0ca52d193e0fe899463d31b894a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381191 | `0x1dce40dc2afa7131c4838c8bff635ae9d198d1ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle-sepolia | n/a | `0x25c6f371cf8d4200b89df84f9de69d011013b086` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381192 | `0x2b4401e59780e44d3b1fd2d41fcb3047c830f286` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381193 | `0x4cc805d920dca57d1199552c67df50582bff8207` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle-sepolia | n/a | `0x55d72f0eb10e85d390b20da57aa3122312647c0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381194 | `0x5ab00e30453eead35025a761ed65d51d74574c24` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381195 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle-sepolia | n/a | `0x944609ff0729435f87ef429ec155d7539a83b9c8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle-sepolia | unit-381196 | `0xb5b6844d41641d2013786f7218324577c0d04656` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle-sepolia | n/a | `0xf6d2675468989387e96127546e0cbc9a384fa418` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381197 | `0x0b902411ada874d94d36f51a4ddca81909bd7233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381199 | `0x132c10b18874eef45ef1e00db9ce266150162d93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381201 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381203 | `0x3625d7b7092d072d6a173fc17f00c1084bab2122` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381205 | `0x3e60892ea588348c98ba6e087a1055a24fe53cff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381207 | `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381209 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | somnia | unit-381210 | `0xced8153adf62f31d940f230397b30622298a445d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381314 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381315 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381316 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381317 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381318 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381319 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381320 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-381321 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380853 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380854 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380855 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380856 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380857 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380858 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380859 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-10200 | unit-380860 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380965 | `0x4b69e2bc4a2835a07104106dfd18d03548ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380966 | `0x6ba5ac44eebdb45d9e92be870558b2517194de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380967 | `0x73e5e41f981365cd92180b040e8532693d84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380968 | `0x75f5d5f22eb175b50b3c305d4dd0cafec4390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380969 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380970 | `0x7adbf5b35db3c150f1f7d4adf3c489a6916418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380971 | `0xa4c9a00ac42c3f8c81421eb7ad44ba076e70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic-testnet | unit-380972 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381061 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381062 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381063 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381064 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381065 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381066 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381067 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | apechain-curtis | unit-381068 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381069 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381070 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381071 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381072 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381073 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381074 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381075 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | apechain | unit-381076 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381085 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381086 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381087 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381088 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381089 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381090 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381091 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-381092 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381101 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381102 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381103 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381104 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381105 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381106 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381107 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-381108 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381117 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381118 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381119 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381120 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381121 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381122 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381123 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-381124 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381125 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381126 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381127 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381128 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381129 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381130 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381131 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-381132 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381141 | `0x04d32d30f63a420a373386f55c43a8b41f30a252` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381142 | `0x1d97c491df77c1ea1b466c984d102a51ace6242d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381143 | `0x26b7446a3a7c21495d389055fe9e80c4a71a3552` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381144 | `0x67e2e466a188f278a23337ab40b988c80ab45099` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381145 | `0x86fb8ba5da497930273e7e68078c8eb9ef35e7a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381146 | `0x89bff723497e4073aa235995c3f19041e463c04f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381147 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-46630 | unit-381148 | `0xddf74ccc271183df7f1efd330eeb797ef52a9f06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381165 | `0x4b69e2bc4a2835a07104106dfd18d03548ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381166 | `0x6ba5ac44eebdb45d9e92be870558b2517194de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381167 | `0x73e5e41f981365cd92180b040e8532693d84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381168 | `0x75f5d5f22eb175b50b3c305d4dd0cafec4390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381169 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381170 | `0x7adbf5b35db3c150f1f7d4adf3c489a6916418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381171 | `0xa4c9a00ac42c3f8c81421eb7ad44ba076e70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-48898 | unit-381172 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381173 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381174 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381175 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381176 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381177 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381178 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381179 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zircuit | unit-381180 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381212 | `0x4b69e2bc4a2835a07104106dfd18d03548ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381214 | `0x6ba5ac44eebdb45d9e92be870558b2517194de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381216 | `0x73e5e41f981365cd92180b040e8532693d84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381217 | `0x75f5d5f22eb175b50b3c305d4dd0cafec4390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381219 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381220 | `0x7adbf5b35db3c150f1f7d4adf3c489a6916418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381222 | `0xa4c9a00ac42c3f8c81421eb7ad44ba076e70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-50312 | unit-381224 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381266 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381267 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381268 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381269 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381270 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381271 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381272 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-381273 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381274 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381275 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381276 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381277 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381278 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381279 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381280 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-381281 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381298 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381299 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381300 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381301 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381302 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381303 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381304 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-381305 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381322 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381323 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381324 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381325 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381326 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381327 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381328 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-381329 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380973 | `0x0ca813f8757197a2a0b0b13871953800ed884082` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | taiko | n/a | `0x14a9e40fcada95a273ce3c8d4ccf7ea3280bdd26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | taiko | n/a | `0x1dce40dc2afa7131c4838c8bff635ae9d198d1ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380974 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380975 | `0x2ab9f26e18b64848cd349582ca3b55c2d06f507d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380976 | `0x4dea3120cde98cc1535977a569bc109cb9ea7afe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380977 | `0x55cf1079a115029a879ec3a11ba5d453272eb61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | taiko | n/a | `0xb015aceedd478fc497a798ab45fced8bded08924` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380978 | `0xb331c8826d1ff3987affe318dff3eac900914fdc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380979 | `0xca69e397ccb2e93fc5bd2e260f0e0a7bd325e4d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | taiko | unit-380980 | `0xf6d2675468989387e96127546e0cbc9a384fa418` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380981 | `0x4b69e2bc4a2835a07104106dfd18d03548ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380982 | `0x6ba5ac44eebdb45d9e92be870558b2517194de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380983 | `0x73e5e41f981365cd92180b040e8532693d84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380984 | `0x75f5d5f22eb175b50b3c305d4dd0cafec4390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380985 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380986 | `0x7adbf5b35db3c150f1f7d4adf3c489a6916418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380987 | `0xa4c9a00ac42c3f8c81421eb7ad44ba076e70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | taiko-hoodi | unit-380988 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381029 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381030 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381031 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381032 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381033 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381034 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381035 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-202601 | unit-381036 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381109 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381110 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381111 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381112 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381113 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381114 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381115 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-381116 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381225 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381227 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381229 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381231 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381232 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381234 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381235 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-534351 | unit-381237 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381239 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381241 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381243 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381245 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381246 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381247 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381248 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-381249 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381258 | `0x4b69e2bc4a2835a07104106dfd18d03548ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381259 | `0x6ba5ac44eebdb45d9e92be870558b2517194de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381260 | `0x73e5e41f981365cd92180b040e8532693d84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381261 | `0x75f5d5f22eb175b50b3c305d4dd0cafec4390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381262 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381263 | `0x7adbf5b35db3c150f1f7d4adf3c489a6916418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381264 | `0xa4c9a00ac42c3f8c81421eb7ad44ba076e70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hoodi | unit-381265 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381282 | `0x4b69e2bc4a2835a07104106dfd18d03548ebc4d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381283 | `0x6ba5ac44eebdb45d9e92be870558b2517194de7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381284 | `0x73e5e41f981365cd92180b040e8532693d84b32d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381285 | `0x75f5d5f22eb175b50b3c305d4dd0cafec4390a21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381286 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381287 | `0x7adbf5b35db3c150f1f7d4adf3c489a6916418d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381288 | `0xa4c9a00ac42c3f8c81421eb7ad44ba076e70375d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | katana-bokuto | unit-381289 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381290 | `0x0b902411ada874d94d36f51a4ddca81909bd7233` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381291 | `0x132c10b18874eef45ef1e00db9ce266150162d93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381292 | `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381293 | `0x3625d7b7092d072d6a173fc17f00c1084bab2122` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381294 | `0x3e60892ea588348c98ba6e087a1055a24fe53cff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381295 | `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381296 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | katana | unit-381297 | `0xced8153adf62f31d940f230397b30622298a445d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381306 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381307 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381308 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381309 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381310 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381311 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381312 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-808813 | unit-381313 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381077 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381078 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381079 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381080 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381081 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381082 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381083 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-3441006 | unit-381084 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380869 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380870 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380871 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380872 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380873 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380874 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380875 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-380876 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380877 | `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380878 | `0x2e787629c3b7545271240a87197108823ce8303b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380879 | `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380880 | `0x709944a48caf83535e43471680fda4905fb3920a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380881 | `0x795e7417b5e9c70037654480f0371e202b48bc77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380882 | `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380883 | `0x81bc85f329cdb28936fbb239f734ae495121f9a6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-380884 | `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 28
- Live contracts: 2
- Unknown liveness contracts: 26
- Source-verified contracts: 6
- Currently scope-matched contracts retained as-is: 0
- Classification counts: exact address book overlap=2, source verified unclassified=4, unverified unclassified=22

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| exact address book overlap | Convenience<br>`0x95087266018b9637aff3d76d4e0cad7e52c19636` | project_anchor | unknown | live | verified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| exact address book overlap | TimelockManager<br>`0xfaef86994a37f1c8b2a5c73648f07dd4eff02baa` | project_anchor | unknown | live | verified | n/a | `0x24dd2870b2a1986f58b495848606ed93270ec6fb` |
| source verified unclassified | Api3CirculatingSupply<br>`0x5af02b1071614f962a7a6ae02503fe3f453a3fa7` | non_address_book | unknown | unknown | verified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| source verified unclassified | Api3Voting<br>`0xc215c66b455e9f7854e7870631f2a01878b0521a` | non_address_book | unknown | unknown | verified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| source verified unclassified | LockedApi3<br>`0xf84b11c31469706b50e57b398c63d7d13187608f` | non_address_book | unknown | unknown | verified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| source verified unclassified | TimelockManager<br>`0x41ab01244c3f466294dbc36916a8b62d56ba1f03` | non_address_book | unknown | unknown | verified | n/a | `0x24dd2870b2a1986f58b495848606ed93270ec6fb` |
| unverified unclassified | UnnamedContract<br>`0x15667178b830e3c48b663366a9acdeef79c9da27` | non_address_book | unknown | unknown | unverified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| unverified unclassified | UnnamedContract<br>`0x18c7ce350481e0659d78d6e1dfeeae7273de2994` | non_address_book | unknown | unknown | unverified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| unverified unclassified | UnnamedContract<br>`0x5c9e3cab8f741c2d17d6948782c94a3ec505bb15` | non_address_book | unknown | unknown | unverified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| unverified unclassified | UnnamedContract<br>`0x7603fa1bd3c40fc23a70c09003a9cfa598eb999d` | non_address_book | unknown | unknown | unverified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| unverified unclassified | UnnamedContract<br>`0x7bf9041f0bc54239b9389defdaf100224c87b416` | non_address_book | unknown | unknown | unverified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| unverified unclassified | UnnamedContract<br>`0x83ae726dfa03f2511e1406ba11c01afbbb464cfb` | non_address_book | unknown | unknown | unverified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| unverified unclassified | UnnamedContract<br>`0x9440182d1c2428d49d4043d15cbf1a68524fd6e0` | non_address_book | unknown | unknown | unverified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| unverified unclassified | UnnamedContract<br>`0xa0d48b8fa999ca8d6967e8b6b6a4dbe0f82996b0` | non_address_book | unknown | unknown | unverified | n/a | `0x1da10cdec44538e1854791b8e71fa4ef05b4b238` |
| unverified unclassified | UnnamedContract<br>`0xa20f2a3acc8b8efaa2c19c51dffabe6a2f66dca6` | non_address_book | unknown | unknown | unverified | n/a | `0x24dd2870b2a1986f58b495848606ed93270ec6fb` |
| unverified unclassified | UnnamedContract<br>`0xa68e1b37a9a792b0b415a4165db9bcaaf83fbe6f` | non_address_book | unknown | unknown | unverified | n/a | `0x1da10cdec44538e1854791b8e71fa4ef05b4b238` |
| unverified unclassified | UnnamedContract<br>`0xad738db073c76b0738c69cb796036584283bf5de` | non_address_book | unknown | unknown | unverified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| unverified unclassified | UnnamedContract<br>`0xba26aa945850c88adbd810070c840cb26e85625a` | non_address_book | unknown | unknown | unverified | n/a | `0x915c0b8e03d8f6b2a18e6032edd896061db40a31` |
| unverified unclassified | UnnamedContract<br>`0xc1dba98fe6befcbd9398c36a5cf286ab534cdacd` | non_address_book | unknown | unknown | unverified | n/a | `0x24dd2870b2a1986f58b495848606ed93270ec6fb` |
| unverified unclassified | UnnamedContract<br>`0xd404f87c895871f133fc6d76e4c7a7593a5f5816` | non_address_book | unknown | unknown | unverified | n/a | `0x1da10cdec44538e1854791b8e71fa4ef05b4b238` |
| unverified unclassified | UnnamedContract<br>`0xef2abc065ff0f34233c9c795ff1800eb7e9a4af9` | non_address_book | unknown | unknown | unverified | n/a | `0x24dd2870b2a1986f58b495848606ed93270ec6fb` |
| unverified unclassified | UnnamedContract<br>`0x25c6f371cf8d4200b89df84f9de69d011013b086` | non_address_book | unknown | unknown | unverified | n/a | `0x07b589f06bd0a5324c4e2376d66d2f4f25921de1` |
| unverified unclassified | UnnamedContract<br>`0x55d72f0eb10e85d390b20da57aa3122312647c0d` | non_address_book | unknown | unknown | unverified | n/a | `0x07b589f06bd0a5324c4e2376d66d2f4f25921de1` |
| unverified unclassified | UnnamedContract<br>`0x944609ff0729435f87ef429ec155d7539a83b9c8` | non_address_book | unknown | unknown | unverified | n/a | `0x07b589f06bd0a5324c4e2376d66d2f4f25921de1` |
| unverified unclassified | UnnamedContract<br>`0xf6d2675468989387e96127546e0cbc9a384fa418` | non_address_book | unknown | unknown | unverified | n/a | `0x07b589f06bd0a5324c4e2376d66d2f4f25921de1` |
| unverified unclassified | UnnamedContract<br>`0x14a9e40fcada95a273ce3c8d4ccf7ea3280bdd26` | non_address_book | unknown | unknown | unverified | n/a | `0x07b589f06bd0a5324c4e2376d66d2f4f25921de1` |
| unverified unclassified | UnnamedContract<br>`0x1dce40dc2afa7131c4838c8bff635ae9d198d1ce` | non_address_book | unknown | unknown | unverified | n/a | `0x07b589f06bd0a5324c4e2376d66d2f4f25921de1` |
| unverified unclassified | UnnamedContract<br>`0xb015aceedd478fc497a798ab45fced8bded08924` | non_address_book | unknown | unknown | unverified | n/a | `0x07b589f06bd0a5324c4e2376d66d2f4f25921de1` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2021-12-16 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2021-12-16%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [2022-03-30 Trail of Bits.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2022-03-30%20Trail%20of%20Bits.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [2023-03-02 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2023-03-02%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [2023-12-20 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2023-12-20%20Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2024-02-20 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2024-02-20%20Quantstamp.pdf) | Quantstamp | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2024-10-24 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2024-10-24%20Quantstamp.pdf) | Quantstamp | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 47 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14934] 2021-12-16 Sigma Prime.pdf — no match: Extracted contract names from findings and overview. Audit date inferred from 'December, 2021' on cover page.
- [14935] 2022-03-30 Trail of Bits.pdf — no match: Extracted contracts from Project Targets, Project Coverage, and Detailed Findings sections. Audit date from cover page: 'March 30, 2022'.
- [14936] 2023-03-02 Sigma Prime.pdf — no match: Extracted contract names from 'Asset' fields in findings and from the 'contracts/*' reference in finding API3-12. Audit date derived from 'March, 2023' on cover page.
- [14937] 2023-12-20 Quantstamp.pdf — no match: Scope section explicitly lists two contracts: interfaces/IOevAuctionHouse.sol and OevAuctionHouse.sol. Audit date is the final report date (2024-01-10) from changelog.
- [14938] 2024-02-20 Quantstamp.pdf — no match: Three contracts in scope: AirseekerRegistry.sol, API3Market.sol, HashRegistry.sol. API3ServerV1 explicitly excluded. Audit date from changelog: 2024-02-27 final report.
- [14939] 2024-10-24 Quantstamp.pdf — no match: Extracted all contract names from the 'Scope Files Included' section and file signatures appendix. Audit date from changelog: '2024-10-24 - Final report'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2021-12-16 Sigma Prime.pdf | AccessControlManagerProxy | unmatched — not counted | — | mentioned in findings API3-01 and API3-02 | no |
| 2021-12-16 Sigma Prime.pdf | AccessControlRegistry | ambiguous — not counted | 0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:07:23+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:08:51+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:01:11+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-12-10 17:27:09+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-06-07 17:41:14+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2025-06-20 10:07:47+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:05:48+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:32:49+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2025-02-11 18:27:42+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2025-03-06 13:58:48+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 14:56:27+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:05:15+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-10-25 15:44:46+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:01:50+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-04-09 20:41:59+03 — liveness: live (current_address_book_code)<br>0x2ab9f2… (alternative) `0x2ab9f26e18b64848cd349582ca3b55c2d06f507d` — deployed 2024-05-28 13:37:47+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 16:16:51+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-04-09 20:43:43+03 — liveness: live (current_address_book_code)<br>0x55d72f… (alternative) `0x55d72f0eb10e85d390b20da57aa3122312647c0d` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:46:23+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-10-18 16:34:09+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:04:25+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-05-28 13:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2021-12-16 Sigma Prime.pdf | RrpBeaconServer | unmatched — not counted | — | mentioned in findings API3-03, API3-06, API3-08 | no |
| 2021-12-16 Sigma Prime.pdf | AirnodeRrp | unmatched — not counted | — | mentioned in findings API3-06, API3-08 | no |
| 2021-12-16 Sigma Prime.pdf | Whitelist | unmatched — not counted | — | mentioned in finding API3-05 | no |
| 2021-12-16 Sigma Prime.pdf | WhitelistRolesWithAirnode | unmatched — not counted | — | mentioned in finding API3-07 | no |
| 2021-12-16 Sigma Prime.pdf | RoleDeriver | unmatched — not counted | — | mentioned in finding API3-08 | no |
| 2021-12-16 Sigma Prime.pdf | AccessControlClient | unmatched — not counted | — | mentioned in finding API3-08 | no |
| 2021-12-16 Sigma Prime.pdf | TemplateUtils | unmatched — not counted | — | mentioned in finding API3-07 | no |
| 2021-12-16 Sigma Prime.pdf | WithdrawalUtils | unmatched — not counted | — | mentioned in finding API3-08 | no |
| 2021-12-16 Sigma Prime.pdf | RrpRequester | unmatched — not counted | — | mentioned in Overview section | no |
| 2022-03-30 Trail of Bits.pdf | AirnodeProtocol | unmatched — not counted | — | Project Coverage section: 'protocol/ . The AirnodeProtocol contract...' | no |
| 2022-03-30 Trail of Bits.pdf | AccessControlRegistry | ambiguous — not counted | 0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:07:23+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:08:51+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:01:11+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-12-10 17:27:09+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-06-07 17:41:14+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2025-06-20 10:07:47+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:05:48+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:32:49+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2025-02-11 18:27:42+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2025-03-06 13:58:48+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 14:56:27+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:05:15+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-10-25 15:44:46+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:01:50+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-04-09 20:41:59+03 — liveness: live (current_address_book_code)<br>0x2ab9f2… (alternative) `0x2ab9f26e18b64848cd349582ca3b55c2d06f507d` — deployed 2024-05-28 13:37:47+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 16:16:51+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-04-09 20:43:43+03 — liveness: live (current_address_book_code)<br>0x55d72f… (alternative) `0x55d72f0eb10e85d390b20da57aa3122312647c0d` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:46:23+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-10-18 16:34:09+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:04:25+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-05-28 13:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2022-03-30 Trail of Bits.pdf | RequesterAuthorizerWhitelisterWithToken | unmatched — not counted | — | Project Coverage section: 'monetization/ . The monetization contracts...' and Finding TOB-API-3 target | no |
| 2022-03-30 Trail of Bits.pdf | RequesterAuthorizerWhitelisterWithTokenDeposit | unmatched — not counted | — | Finding TOB-API-4 target | no |
| 2022-03-30 Trail of Bits.pdf | RequesterAuthorizerWhitelisterWithTokenPayment | unmatched — not counted | — | Finding TOB-API-5 target | no |
| 2022-03-30 Trail of Bits.pdf | DapiServer | unmatched — not counted | — | Project Coverage section: 'dapis/ . The DapiServer contract...' and multiple findings | no |
| 2022-03-30 Trail of Bits.pdf | StorageUtils | unmatched — not counted | — | Finding TOB-API-1 target | no |
| 2022-03-30 Trail of Bits.pdf | AddressRegistry | unmatched — not counted | — | Code Quality Recommendations section mentions AddressRegistry.sol | no |
| 2022-03-30 Trail of Bits.pdf | RequesterAuthorizerRegistry | unmatched — not counted | — | Code Quality Recommendations section mentions RequesterAuthorizerRegistry.sol | no |
| 2022-03-30 Trail of Bits.pdf | Sort | unmatched — not counted | — | Code Quality Recommendations section mentions Sort.sol | no |
| 2022-03-30 Trail of Bits.pdf | Median | unmatched — not counted | — | Code Quality Recommendations section mentions Median.sol | no |
| 2023-03-02 Sigma Prime.pdf | DapiServer | unmatched — not counted | — | Listed as asset in findings API3-01, API3-02, API3-03 | no |
| 2023-03-02 Sigma Prime.pdf | AirnodeProtocol | unmatched — not counted | — | Listed as asset in findings API3-04, API3-11 | no |
| 2023-03-02 Sigma Prime.pdf | StorageUtils | unmatched — not counted | — | Listed as asset in finding API3-04 | no |
| 2023-03-02 Sigma Prime.pdf | DataFeedProxyWithOev | unmatched — not counted | — | Listed as asset in finding API3-05 | no |
| 2023-03-02 Sigma Prime.pdf | DapiProxyWithOev | unmatched — not counted | — | Listed as asset in finding API3-05 | no |
| 2023-03-02 Sigma Prime.pdf | AirnodeRequester | unmatched — not counted | — | Listed as asset in finding API3-06 | no |
| 2023-03-02 Sigma Prime.pdf | ExternalMulticall | unmatched — not counted | — | Listed as asset in findings API3-07, API3-09 | no |
| 2023-03-02 Sigma Prime.pdf | SelfMulticall | unmatched — not counted | — | Listed as asset in finding API3-08 | no |
| 2023-03-02 Sigma Prime.pdf | RequestAuthorizer | unmatched — not counted | — | Listed as asset in finding API3-10 | no |
| 2023-03-02 Sigma Prime.pdf | QuickSelect | unmatched — not counted | — | Mentioned in finding API3-12 gas optimizations | no |
| 2023-03-02 Sigma Prime.pdf | Allocator | unmatched — not counted | — | Mentioned in finding API3-12 gas optimizations | no |
| 2023-03-02 Sigma Prime.pdf | RequesterAuthorizer | unmatched — not counted | — | Mentioned in finding API3-12 gas optimizations | no |
| 2023-03-02 Sigma Prime.pdf | WithdrawalUtils | unmatched — not counted | — | Mentioned in finding API3-12 | no |
| 2023-12-20 Quantstamp.pdf | IOevAuctionHouse | unmatched — not counted | — | listed in scope section | no |
| 2023-12-20 Quantstamp.pdf | OevAuctionHouse | unmatched — not counted | — | listed in scope section | no |
| 2024-02-20 Quantstamp.pdf | AirseekerRegistry | ambiguous — not counted | 0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 19:18:38+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:53:39+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-12-11 16:46:56+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2025-02-11 18:29:08+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 19:18:10+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:07:50+03 — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 17:50:21+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 17:33:45+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:31:45+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:16:03+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:56:12+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:06:03+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:35:42+03 — liveness: live (current_address_book_code)<br>0xb331c8… (alternative) `0xb331c8826d1ff3987affe318dff3eac900914fdc` — deployed 2024-10-27 19:27:23+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-11-06 16:42:23+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-11-06 15:42:08+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` — deployed 2025-08-28 11:38:00+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 17:37:15+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-26 21:18:36+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x5ab00e… (alternative) `0x5ab00e30453eead35025a761ed65d51d74574c24` — liveness: live (current_address_book_code)<br>0xbd5533… (alternative) `0xbd553312fa8e6fe36e0f2df02380f623672f6e88` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` — deployed 2025-06-20 10:08:15+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:00:47+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:24:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-02-20 Quantstamp.pdf | API3Market | unmatched — not counted | — | listed in scope files | no |
| 2024-02-20 Quantstamp.pdf | HashRegistry | unmatched — not counted | — | listed in scope files | no |
| 2024-10-24 Quantstamp.pdf | GnosisSafeWithoutProxy | ambiguous — not counted | 0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — liveness: live (current_address_book_code)<br>0x14a9e4… (alternative) `0x14a9e40fcada95a273ce3c8d4ccf7ea3280bdd26` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:08:20+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:07:05+03 — liveness: live (current_address_book_code)<br>0xbac8d5… (alternative) `0xbac8d514d284df81fc21de80925d2e0721bf06b5` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:05:16+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:01:11+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 10:49:21+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2024-11-06 16:34:21+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-02-11 18:26:52+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:07:18+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2024-11-06 15:39:16+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:01:57+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:03:48+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:00:22+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:06:06+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2024-12-11 16:43:46+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:02:10+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-06-20 10:07:37+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 10:49:53+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-03-06 13:55:00+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 10:43:06+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:08:47+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:07:56+03 — liveness: live (current_address_book_code)<br>0x2aae69… (alternative) `0x2aae699ed04bbbd068f67a5b3c813ebb35f2c9e8` — deployed 2025-01-06 11:05:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | AccessControlRegistry | ambiguous — not counted | 0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:07:23+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:08:51+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:01:11+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-12-10 17:27:09+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-06-07 17:41:14+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2025-06-20 10:07:47+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:05:48+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:32:49+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2025-02-11 18:27:42+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2025-03-06 13:58:48+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 14:56:27+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:05:15+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-10-25 15:44:46+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:01:50+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-04-09 20:41:59+03 — liveness: live (current_address_book_code)<br>0x2ab9f2… (alternative) `0x2ab9f26e18b64848cd349582ca3b55c2d06f507d` — deployed 2024-05-28 13:37:47+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 16:16:51+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-04-09 20:43:43+03 — liveness: live (current_address_book_code)<br>0x55d72f… (alternative) `0x55d72f0eb10e85d390b20da57aa3122312647c0d` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-07 15:46:23+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-10-18 16:34:09+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2023-12-06 18:04:25+03 — liveness: live (current_address_book_code)<br>0xcd7df5… (alternative) `0xcd7df573b0f0bb4f2f8dfff6650cde8c77431730` — deployed 2024-05-28 13:34:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | AccessControlRegistryAdminnedWithManager | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | RoleDeriver | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | HashRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | OwnableCallForwarder | ambiguous — not counted | 0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — liveness: live (current_address_book_code)<br>0x3e6089… (alternative) `0x3e60892ea588348c98ba6e087a1055a24fe53cff` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-09-13 21:39:51+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-03-16 21:30:24+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-03-16 21:22:32+03 — liveness: live (current_address_book_code)<br>0xf6d267… (alternative) `0xf6d2675468989387e96127546e0cbc9a384fa418` — deployed 2024-05-28 13:35:59+03 — liveness: live (current_address_book_code)<br>0x3e6089… (alternative) `0x3e60892ea588348c98ba6e087a1055a24fe53cff` — deployed 2025-08-28 11:30:11+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-03-16 21:14:48+03 — liveness: live (current_address_book_code)<br>0x0f52ee… (alternative) `0x0f52ee9c03cb939f25286d05a846208642f45a32` — liveness: live (current_address_book_code)<br>0x3e6089… (alternative) `0x3e60892ea588348c98ba6e087a1055a24fe53cff` — deployed 2025-06-20 10:07:42+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2024-06-07 17:41:05+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2024-04-09 20:41:45+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-03-16 20:41:00+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-03-16 20:38:21+03 — liveness: live (current_address_book_code)<br>0x25c6f3… (alternative) `0x25c6f371cf8d4200b89df84f9de69d011013b086` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-09-01 18:51:16+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2024-11-06 15:39:59+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-03-16 20:43:30+03 — liveness: live (current_address_book_code)<br>0x3e6089… (alternative) `0x3e60892ea588348c98ba6e087a1055a24fe53cff` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-03-16 20:50:59+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2024-12-11 16:45:55+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2024-04-09 20:43:27+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-09-13 21:33:41+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2024-11-06 16:35:09+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2024-05-28 13:34:55+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2025-02-11 18:27:06+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — deployed 2023-03-16 21:03:25+03 — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — liveness: live (current_address_book_code)<br>0x81bc85… (alternative) `0x81bc85f329cdb28936fbb239f734ae495121f9a6` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | AccessControlRegistryAdminned | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOwnable | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOwnableCallForwarder | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IAccessControlRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IHashRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IAccessControlRegistryAdminned | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IAccessControlRegistryAdminnedWithManager | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | SelfMulticall | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | ExtendedSelfMulticall | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IExtendedSelfMulticall | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | ISelfMulticall | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Median | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | QuickSelect | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Sort | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Api3MarketV2 | ambiguous — not counted | 0x2b4401… (alternative) `0x2b4401e59780e44d3b1fd2d41fcb3047c830f286` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 18:53:33+03 — liveness: live (current_address_book_code)<br>0xca69e3… (alternative) `0xca69e397ccb2e93fc5bd2e260f0e0a7bd325e4d9` — deployed 2024-10-27 19:26:11+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-25 16:14:57+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 18:56:06+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 17:50:15+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 18:07:40+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 19:14:36+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 18:00:23+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 17:33:39+03 — liveness: live (current_address_book_code)<br>0x3625d7… (alternative) `0x3625d7b7092d072d6a173fc17f00c1084bab2122` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 17:37:05+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 18:15:55+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — liveness: live (current_address_book_code)<br>0x3625d7… (alternative) `0x3625d7b7092d072d6a173fc17f00c1084bab2122` — deployed 2025-08-28 11:37:00+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 18:35:18+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-12-11 16:46:49+03 — liveness: live (current_address_book_code)<br>0x3625d7… (alternative) `0x3625d7b7092d072d6a173fc17f00c1084bab2122` — deployed 2025-06-20 10:08:10+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2025-02-11 18:28:55+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 18:31:37+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 18:24:22+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 18:05:57+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — liveness: live (current_address_book_code)<br>0x3625d7… (alternative) `0x3625d7b7092d072d6a173fc17f00c1084bab2122` — liveness: live (current_address_book_code)<br>0x7d0c40… (alternative) `0x7d0c40f6b4d49cfb616b051f314b88546c38bee1` — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-11-06 15:41:56+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-11-06 16:42:09+03 — liveness: live (current_address_book_code)<br>0x3f5c77… (alternative) `0x3f5c77bb36a16118ccc9ca83ddee8a01b6c01811` — deployed 2024-10-27 19:18:32+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | BeaconUpdatesWithSignedData | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | DapiServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | AirseekerRegistry | ambiguous — not counted | 0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 19:18:38+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:53:39+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-12-11 16:46:56+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2025-02-11 18:29:08+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 19:18:10+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:07:50+03 — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 17:50:21+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 17:33:45+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:31:45+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:16:03+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:56:12+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:06:03+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:35:42+03 — liveness: live (current_address_book_code)<br>0xb331c8… (alternative) `0xb331c8826d1ff3987affe318dff3eac900914fdc` — deployed 2024-10-27 19:27:23+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-11-06 16:42:23+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-11-06 15:42:08+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` — deployed 2025-08-28 11:38:00+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 17:37:15+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-26 21:18:36+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x5ab00e… (alternative) `0x5ab00e30453eead35025a761ed65d51d74574c24` — liveness: live (current_address_book_code)<br>0xbd5533… (alternative) `0xbd553312fa8e6fe36e0f2df02380f623672f6e88` — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — liveness: live (current_address_book_code)<br>0x48c2c4… (alternative) `0x48c2c4e35a487b5d85c2aef394d34ad4959fa257` — deployed 2025-06-20 10:08:15+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:00:47+03 — liveness: live (current_address_book_code)<br>0x7b42df… (alternative) `0x7b42df2563e128ae3f68e2cfb1904808f61c8f12` — deployed 2024-10-27 18:24:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | OevDataFeedServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Api3ServerV1OevExtension | ambiguous — not counted | 0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 17:59:23+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 19:10:16+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 18:05:39+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — liveness: live (current_address_book_code)<br>0x4dea31… (alternative) `0x4dea3120cde98cc1535977a569bc109cb9ea7afe` — deployed 2024-10-27 19:23:35+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 18:31:05+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 18:33:00+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-12-11 16:46:25+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 18:07:05+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2025-02-11 18:28:11+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-11-06 15:40:37+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 18:15:29+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-11-06 16:41:27+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 17:49:39+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — liveness: live (current_address_book_code)<br>0x132c10… (alternative) `0x132c10b18874eef45ef1e00db9ce266150162d93` — liveness: live (current_address_book_code)<br>0x132c10… (alternative) `0x132c10b18874eef45ef1e00db9ce266150162d93` — deployed 2025-06-20 10:07:57+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 18:54:40+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-25 16:14:34+03 — liveness: live (current_address_book_code)<br>0x55cf10… (alternative) `0x55cf1079a115029a879ec3a11ba5d453272eb61d` — liveness: live (current_address_book_code)<br>0x132c10… (alternative) `0x132c10b18874eef45ef1e00db9ce266150162d93` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 17:33:21+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 18:53:11+03 — liveness: live (current_address_book_code)<br>0x132c10… (alternative) `0x132c10b18874eef45ef1e00db9ce266150162d93` — deployed 2025-08-28 11:34:00+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 19:18:28+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 17:36:43+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — deployed 2024-10-27 18:24:02+03 — liveness: live (current_address_book_code)<br>0x2e7876… (alternative) `0x2e787629c3b7545271240a87197108823ce8303b` — liveness: live (current_address_book_code)<br>0x1b3f9f… (alternative) `0x1b3f9f2522c871d5b4acfafbe94cde8d7b026bc9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | OevDapiServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | OevAuctionHouse | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Api3ServerV1 | ambiguous — not counted | 0xced815… (alternative) `0xced8153adf62f31d940f230397b30622298a445d` — deployed 2025-08-28 11:33:00+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-06 18:04:37+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-07 15:01:15+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2024-04-09 20:42:05+03 — liveness: live (current_address_book_code)<br>0x55cf10… (alternative) `0x55cf1079a115029a879ec3a11ba5d453272eb61d` — deployed 2024-05-28 13:38:23+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-06 18:06:12+03 — liveness: live (current_address_book_code)<br>0xced815… (alternative) `0xced8153adf62f31d940f230397b30622298a445d` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-07 14:56:33+03 — liveness: live (current_address_book_code)<br>0xced815… (alternative) `0xced8153adf62f31d940f230397b30622298a445d` — deployed 2025-06-20 10:07:52+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-07 15:33:01+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-06 18:02:20+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2024-11-06 15:40:24+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2024-06-07 17:41:20+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-07 15:08:59+03 — liveness: live (current_address_book_code)<br>0xced815… (alternative) `0xced8153adf62f31d940f230397b30622298a445d` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2024-05-28 13:35:00+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2024-12-11 16:46:17+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2024-11-06 16:41:11+03 — liveness: live (current_address_book_code)<br>0x2ab9f2… (alternative) `0x2ab9f26e18b64848cd349582ca3b55c2d06f507d` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-07 16:16:59+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2025-02-11 18:27:57+03 — liveness: live (current_address_book_code)<br>0xea5f32… (alternative) `0xea5f320ee0ef7e81afaf2a9b4fbc1a7d093287fe` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2024-04-09 20:43:51+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-07 15:46:35+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-06 18:05:20+03 — liveness: live (current_address_book_code)<br>0x709944… (alternative) `0x709944a48caf83535e43471680fda4905fb3920a` — deployed 2023-12-06 18:12:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | DataFeedServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Api3ReaderProxyV1 | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | Api3ReaderProxyV1Factory | ambiguous — not counted | 0xefc588… (alternative) `0xefc5883a9d09fd06a0d5f8612e5ff18dd10cb227` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 17:33:27+03 — liveness: live (current_address_book_code)<br>0x1dce40… (alternative) `0x1dce40dc2afa7131c4838c8bff635ae9d198d1ce` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 18:24:08+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 18:15:37+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2025-02-11 18:28:25+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 18:33:30+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 18:31:15+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-11-06 16:41:39+03 — liveness: live (current_address_book_code)<br>0x0b9024… (alternative) `0x0b902411ada874d94d36f51a4ddca81909bd7233` — deployed 2025-06-20 10:08:02+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 17:36:49+03 — liveness: live (current_address_book_code)<br>0x0b9024… (alternative) `0x0b902411ada874d94d36f51a4ddca81909bd7233` — deployed 2025-08-28 11:35:00+03 — liveness: live (current_address_book_code)<br>0x0b9024… (alternative) `0x0b902411ada874d94d36f51a4ddca81909bd7233` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 18:54:46+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 17:59:59+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 18:05:45+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-12-11 16:46:36+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 18:07:15+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 19:12:30+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-11-06 15:40:48+03 — liveness: live (current_address_book_code)<br>0x0b9024… (alternative) `0x0b902411ada874d94d36f51a4ddca81909bd7233` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 18:53:21+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-25 16:14:43+03 — liveness: live (current_address_book_code)<br>0x0ca813… (alternative) `0x0ca813f8757197a2a0b0b13871953800ed884082` — deployed 2024-10-27 19:23:59+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 17:49:45+03 — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — liveness: live (current_address_book_code)<br>0x1fe170… (alternative) `0x1fe170311cb13e3bfb96dec8faadcf97bf843381` — deployed 2024-10-27 19:18:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-10-24 Quantstamp.pdf | IApi3ReaderProxyV1Factory | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IProxy | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOevProxy | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IApi3ReaderProxyV1 | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOevDataFeedServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IApi3MarketV2 | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IApi3ServerV1 | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOevAuctionHouse | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IDapiServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IBeaconUpdatesWithSignedData | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IAirseekerRegistry | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IOevDapiServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IApi3ServerV1OevExtension | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IDataFeedServer | unmatched — not counted | — | listed in scope | no |
| 2024-10-24 Quantstamp.pdf | IApi3ReaderProxy | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x0b38210ea11411557c13457d4da7dc6ea731b88a` | Api3Token | token | $36,878,429.11 | Verified native implementation with $36,878,429.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6dd655f10d4b9e242ae186d9050b68f725c76d76` | Api3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x95087266018b9637aff3d76d4e0cad7e52c19636` | Convenience | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfaef86994a37f1c8b2a5c73648f07dd4eff02baa` | TimelockManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 543 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 11 ambiguous, 76 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: n/a

Zero-match audit list:

- [14934] 2021-12-16 Sigma Prime.pdf
- [14935] 2022-03-30 Trail of Bits.pdf
- [14936] 2023-03-02 Sigma Prime.pdf
- [14937] 2023-12-20 Quantstamp.pdf
- [14938] 2024-02-20 Quantstamp.pdf
- [14939] 2024-10-24 Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
